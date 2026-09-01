#!/usr/bin/env python3
"""Decode the raw LZHUF streams used by Klik & Play installers.

This is a from-spec implementation of the 4 KiB LZSS + adaptive Huffman
format commonly called LZHUF.  Fixed-width masking is explicit so decoding
does not depend on the host C compiler's historical 16-bit ``unsigned``.
"""

from __future__ import annotations

import argparse
import struct
from pathlib import Path


N = 4096
F = 60
THRESHOLD = 2
N_CHAR = 256 - THRESHOLD + F
T = N_CHAR * 2 - 1
R = T - 1
MAX_FREQ = 0x8000

# Upper-six-bit position prefix lookup tables from the published LZHUF format.
P_LEN = bytes([
    3, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5,
    *([6] * 12), *([7] * 24), *([8] * 16),
])
P_CODE = bytes([
    0x00, 0x20, 0x30, 0x40, 0x50, 0x58, 0x60, 0x68,
    0x70, 0x78, 0x80, 0x88, 0x90, 0x94, 0x98, 0x9C,
    0xA0, 0xA4, 0xA8, 0xAC, 0xB0, 0xB4, 0xB8, 0xBC,
    0xC0, 0xC2, 0xC4, 0xC6, 0xC8, 0xCA, 0xCC, 0xCE,
    0xD0, 0xD2, 0xD4, 0xD6, 0xD8, 0xDA, 0xDC, 0xDE,
    0xE0, 0xE2, 0xE4, 0xE6, 0xE8, 0xEA, 0xEC, 0xEE,
    0xF0, 0xF1, 0xF2, 0xF3, 0xF4, 0xF5, 0xF6, 0xF7,
    0xF8, 0xF9, 0xFA, 0xFB, 0xFC, 0xFD, 0xFE, 0xFF,
])


def build_decode_tables() -> tuple[list[int], list[int]]:
    codes = [0] * 256
    lengths = [0] * 256
    for prefix, (code, length) in enumerate(zip(P_CODE, P_LEN)):
        span = 1 << (8 - length)
        for value in range(code, code + span):
            codes[value] = prefix
            lengths[value] = length
    return codes, lengths


D_CODE_TABLE, D_LEN_TABLE = build_decode_tables()


class BitReader:
    def __init__(self, data: bytes, offset: int = 0):
        self.data = data
        self.offset = offset
        self.buffer = 0
        self.length = 0

    def _fill(self) -> None:
        value = self.data[self.offset] if self.offset < len(self.data) else 0
        self.offset += 1
        self.buffer = (self.buffer | (value << (8 - self.length))) & 0xFFFF
        self.length += 8

    def bit(self) -> int:
        while self.length <= 8:
            self._fill()
        result = 1 if self.buffer & 0x8000 else 0
        self.buffer = (self.buffer << 1) & 0xFFFF
        self.length -= 1
        return result

    def byte(self) -> int:
        while self.length <= 8:
            self._fill()
        result = self.buffer >> 8
        self.buffer = (self.buffer << 8) & 0xFFFF
        self.length -= 8
        return result


class AdaptiveHuffman:
    def __init__(self, bits: BitReader):
        self.bits = bits
        self.frequency = [0] * (T + 1)
        self.parent = [0] * (T + N_CHAR)
        self.child = [0] * T
        for index in range(N_CHAR):
            self.frequency[index] = 1
            self.child[index] = index + T
            self.parent[index + T] = index
        source = 0
        for index in range(N_CHAR, T):
            self.frequency[index] = self.frequency[source] + self.frequency[source + 1]
            self.child[index] = source
            self.parent[source] = index
            self.parent[source + 1] = index
            source += 2
        self.frequency[T] = 0xFFFF
        self.parent[R] = 0

    def reconstruct(self) -> None:
        destination = 0
        for source in range(T):
            if self.child[source] >= T:
                self.frequency[destination] = (self.frequency[source] + 1) >> 1
                self.child[destination] = self.child[source]
                destination += 1

        source = 0
        for destination in range(N_CHAR, T):
            combined = self.frequency[source] + self.frequency[source + 1]
            insert = destination - 1
            while combined < self.frequency[insert]:
                insert -= 1
            insert += 1
            if destination > insert:
                self.frequency[insert + 1:destination + 1] = self.frequency[insert:destination]
                self.child[insert + 1:destination + 1] = self.child[insert:destination]
            self.frequency[insert] = combined
            self.child[insert] = source
            source += 2

        for index in range(T):
            child = self.child[index]
            if child >= T:
                self.parent[child] = index
            else:
                self.parent[child] = index
                self.parent[child + 1] = index

    def update(self, symbol: int) -> None:
        if self.frequency[R] == MAX_FREQ:
            self.reconstruct()
        node = self.parent[symbol + T]
        # This is intentionally a do/while traversal.  Node zero is a real
        # internal Huffman node (and is the initial parent of symbol zero),
        # while parent[root] == 0 is the termination sentinel.  A plain
        # ``while node`` silently skips the first update for symbol zero and
        # desynchronizes the adaptive tree from the encoded stream.
        while True:
            new_frequency = self.frequency[node] + 1
            self.frequency[node] = new_frequency
            if new_frequency > self.frequency[node + 1]:
                exchange = node + 1
                while new_frequency > self.frequency[exchange + 1]:
                    exchange += 1
                self.frequency[node] = self.frequency[exchange]
                self.frequency[exchange] = new_frequency

                first = self.child[node]
                self.parent[first] = exchange
                if first < T:
                    self.parent[first + 1] = exchange
                second = self.child[exchange]
                self.child[exchange] = first
                self.parent[second] = node
                if second < T:
                    self.parent[second + 1] = node
                self.child[node] = second
                node = exchange
            node = self.parent[node]
            if node == 0:
                break

    def symbol(self) -> int:
        node = self.child[R]
        while node < T:
            node = self.child[node + self.bits.bit()]
        symbol = node - T
        self.update(symbol)
        return symbol

    def position(self) -> int:
        value = self.bits.byte()
        position = D_CODE_TABLE[value] << 6
        remaining = D_LEN_TABLE[value] - 2
        while remaining:
            value = (value << 1) + self.bits.bit()
            remaining -= 1
        return position | (value & 0x3F)


def decode(data: bytes) -> bytes:
    if len(data) < 4:
        raise ValueError("truncated LZHUF stream")
    output_size = struct.unpack_from("<I", data)[0]
    bits = BitReader(data, 4)
    huffman = AdaptiveHuffman(bits)
    ring = bytearray(b" " * (N - F) + b"\0" * (F * 2 - 1))
    ring_position = N - F
    output = bytearray()
    while len(output) < output_size:
        symbol = huffman.symbol()
        if symbol < 256:
            output.append(symbol)
            ring[ring_position] = symbol
            ring_position = (ring_position + 1) & (N - 1)
            continue
        source = (ring_position - huffman.position() - 1) & (N - 1)
        length = symbol - 255 + THRESHOLD
        for index in range(length):
            value = ring[(source + index) & (N - 1)]
            output.append(value)
            ring[ring_position] = value
            ring_position = (ring_position + 1) & (N - 1)
            if len(output) == output_size:
                break
    return bytes(output)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("input", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    result = decode(args.input.read_bytes())
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_bytes(result)
    print(f"decoded {len(result)} bytes")


if __name__ == "__main__":
    main()
