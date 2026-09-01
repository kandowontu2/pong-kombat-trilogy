use std::env;
use std::error::Error;
use std::fs;
use std::io::BufWriter;
use std::path::Path;

use oxideav_pict::{PictPixelFormat, parse_pict};

fn main() -> Result<(), Box<dyn Error>> {
    let mut args = env::args_os().skip(1);
    let input = args.next().ok_or("usage: pict_decoder INPUT OUTPUT")?;
    let output = args.next().ok_or("usage: pict_decoder INPUT OUTPUT")?;
    if args.next().is_some() {
        return Err("usage: pict_decoder INPUT OUTPUT".into());
    }

    let picture = parse_pict(&fs::read(&input)?)?;
    if picture.pixel_format != PictPixelFormat::Rgba {
        return Err(format!("unsupported decoded pixel format: {:?}", picture.pixel_format).into());
    }

    let output_path = Path::new(&output);
    let file = fs::File::create(output_path)?;
    let writer = BufWriter::new(file);
    let mut encoder = png::Encoder::new(writer, picture.width, picture.height);
    encoder.set_color(png::ColorType::Rgba);
    encoder.set_depth(png::BitDepth::Eight);
    let mut png_writer = encoder.write_header()?;
    png_writer.write_image_data(&picture.data)?;
    Ok(())
}
