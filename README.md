# homebrew-incoming

Homebrew formula for [`incoming`](https://github.com/week-end-manufacture/incoming),
a POSIX C utility that organizes files and converts media from an input directory
into an output directory.

`incoming` recursively scans an input directory, converts supported images and
videos, extracts archives, and copies files that do not require conversion. It
can also preview the resulting output structure before making changes.

## Features

- Recursively process directories and their subdirectories
- Process a single file or an entire directory
- Convert images with ImageMagick
- Convert videos with HandBrake
- Extract ZIP, RAR, and 7z archives
- Copy files with unsupported extensions while preserving their relative paths
- Select different image and video presets
- Preview operations with dummy mode
- Delete successfully processed source files with unlink mode
- Display per-file progress and write processing logs

File types are identified by their extensions. The program does not inspect
MIME types, so an incorrectly named file may not be processed as expected.

## Requirements

- macOS or another POSIX-compatible operating system
- Homebrew
- A C11-compatible compiler and `make` when building from source

The Formula installs these runtime dependencies automatically:

| Dependency | Used for |
| --- | --- |
| `ffmpeg` | Media processing support |
| `handbrake` | Video conversion through `HandBrakeCLI` |
| `imagemagick` | Image conversion through `magick` or `convert` |
| `p7zip` | 7z archive extraction |

ZIP extraction uses macOS's built-in `unzip` command. RAR extraction requires
an `unrar` executable, which is not installed by this Formula and must be
installed separately if RAR files are needed.

## Installation

### Install from the Homebrew tap

```sh
brew tap week-end-manufacture/incoming
brew install incoming
```

To update the Formula and its dependencies later:

```sh
brew update
brew upgrade incoming
```

### Build the Formula from source

After adding the tap, force Homebrew to build the Formula locally instead of
using a pre-built bottle:

```sh
brew install --build-from-source week-end-manufacture/incoming/incoming
```

The Formula downloads version `1.0.0` of `incoming`, verifies the archive
against its SHA-256 checksum, builds the executable with the compiler selected
by Homebrew, and installs it as `incoming`.

## Initial configuration

`incoming` reads its settings from:

```text
~/.config/incoming/settings.json
```

The Formula installs example configuration files under Homebrew's shared data
directory. Copy them to the expected configuration directory before the first
run:

```sh
mkdir -p ~/.config/incoming
cp -R "$(brew --prefix incoming)/share/incoming/config/"* ~/.config/incoming/
```

The Formula's shared data path can also be checked with:

```sh
ls "$(brew --prefix incoming)/share/incoming/config"
```

After copying the examples, edit `~/.config/incoming/settings.json` and set
paths appropriate for your system. A minimal configuration looks like this:

```json
{
  "src_dir_path": "/Users/you/Incoming",
  "dst_dir_path": "/Users/you/Outgoing",
  "default_preset_path": ".config/incoming/preset/preset.json"
}
```

The required settings are:

| Setting | Description |
| --- | --- |
| `src_dir_path` | Default input directory or file |
| `dst_dir_path` | Default output directory |
| `default_preset_path` | Default image/video preset JSON file |

Absolute paths are used as written. Relative preset paths are resolved below
your home directory. The Formula does not create personal configuration files
automatically, because the input and output locations are user-specific.

To open the configuration directory on macOS:

```sh
incoming --settings
```

This command expects the configuration directory to exist, so perform the
initial setup above first.

## Supported file types

### Images

The default image extensions include:

```text
.jpg  .jpeg  .png  .bmp  .tiff  .tif
```

Images are converted to `.jpg` by default, keeping their original base name.
For example, `photo.png` becomes `photo.jpg` in the output directory.

### Videos

The default video extensions include:

```text
.asf  .avi  .flv  .mkv  .mov  .mp4  .mpeg  .ts  .webm
.wmv  .m4v  .mpg  .mts  .m2ts  .vob  .evo
```

Videos are converted to `.mp4` by default using the configured HandBrake
preset.

### Archives

Archive extraction is provided by the following commands:

| Extension | Command | Availability |
| --- | --- | --- |
| `.zip` | `unzip` | Included with macOS |
| `.rar` | `unrar` | Install separately |
| `.7z` | `7z` | Installed by the Formula through `p7zip` |

Archives are extracted next to the source archive rather than directly into
the output directory. The program creates a directory named after the source,
with an archive-specific suffix such as `<filename>_zip`, `<filename>_rar`, or
`<filename>_7z`.

### Other files

Files with unsupported extensions are copied without conversion, while their
relative directory structure is preserved.

## Usage

Run with the values from `settings.json`:

```sh
incoming
```

Or provide paths explicitly:

```sh
incoming -i "/Users/you/Incoming" -o "/Users/you/Outgoing"
```

Available options:

| Option | Description |
| --- | --- |
| `-i PATH`, `--src_dir_path PATH` | Input directory or a single input file |
| `-o PATH`, `--dst_dir_path PATH` | Output directory |
| `-p NAME`, `--user_preset NAME` | Use `~/.config/incoming/preset/NAME.json` |
| `-s`, `--settings` | Open the configuration directory |
| `-d`, `--dummy` | Create dummy output files without converting or copying data |
| `-u`, `--unlink` | Delete successfully processed source files |
| `-v`, `--version` | Print the installed version |
| `-h`, `--help` | Print command help |

Command-line values for the input path, output path, and preset take precedence
over the corresponding configuration values.

### Preview changes safely

Use dummy mode to inspect the planned output without performing conversions or
copying file contents:

```sh
incoming -i "/Users/you/Incoming" -o "/Users/you/Outgoing" --dummy
```

### Use a named preset

Named presets are read from `~/.config/incoming/preset/`:

```sh
incoming --user_preset travel
```

The command loads `~/.config/incoming/preset/travel.json`.

### Remove processed sources

The unlink option removes a source file only after it has been processed
successfully:

```sh
incoming --unlink
```

Review the operation with `--dummy` first when using this option.

## Presets

The default preset is the JSON file referenced by `default_preset_path`.
Available preset settings include:

| Key | Type | Default | Description |
| --- | --- | --- | --- |
| `image_process_toggle` | boolean | `true` | Enable image conversion |
| `video_process_toggle` | boolean | `true` | Enable video conversion |
| `process_hidden_files_toggle` | boolean | `true` | Include hidden files and directories |
| `output_ext` | string | `.jpg` | Image output extension |
| `output_video_ext` | string | `.mp4` | Video output extension |
| `remove_all_exif_data` | boolean | `false` | Remove all EXIF data during image conversion |
| `remove_only_gps_exif_data` | boolean | `false` | GPS EXIF setting exposed by the configuration format |
| `HandBrake_presets_path` | string | unset | Path to the HandBrake preset JSON |

The example files installed by the Formula include a HandBrake preset. If its
path is relative, it is resolved below your home directory; an absolute path
is used as written.

## Updating and uninstalling

Inspect the installed Formula:

```sh
brew info incoming
```

Uninstall the program with:

```sh
brew uninstall incoming
```

Uninstalling the Formula does not remove `~/.config/incoming`, so your
settings and presets remain available if you reinstall the program.

## Verification and troubleshooting

Verify that the executable is installed and report its version:

```sh
incoming --version
```

Run Homebrew's Formula test locally:

```sh
brew test incoming
```

If a conversion or extraction fails, check the following:

1. Confirm that the file extension matches the actual file type.
2. Confirm that `~/.config/incoming/settings.json` exists and contains all
   required settings.
3. Confirm that the configured input and output paths are readable and
   writable.
4. Confirm that `magick`, `HandBrakeCLI`, and `7z` are available on `PATH` for
   the corresponding operations.
5. Install an `unrar` executable separately before processing RAR archives.

## Development

The Homebrew Formula builds the upstream C program from its `src` directory:

```sh
git clone https://github.com/week-end-manufacture/incoming.git
cd incoming/src
make
./incoming --version
```

This repository contains the Formula definition in
[`Formula/incoming.rb`](./Formula/incoming.rb). The Formula's test invokes
`incoming --version` after installation.

## License

The upstream project and this Formula are distributed under the [MIT
License](./LICENSE).
