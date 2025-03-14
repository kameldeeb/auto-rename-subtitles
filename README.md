#  Subtitle Renamer for Video Files

This script automatically renames subtitle files to match their corresponding video files in the same directory.

##  How It Works
- Scans the current folder for **video files** (`.mp4`, `.mkv`, `.avi`, `.mov`).
- Scans for **subtitle files** (`.srt`, `.ass`, `.vtt`).
- Matches subtitles to video files in order.
- Renames subtitle files to match the video file names.

##  Requirements
- **Python** must be installed on your system.
- Your subtitle files and video files should be in the **same folder**.

##  Usage
1. **Download or copy** the `rename_subtitles.bat` file to the folder containing your video and subtitle files.
2. **Run the `.bat` file** by double-clicking it.
3. The script will rename all subtitle files automatically.


### Before Running:
📁 The Big Bang Theory /
- ├── The.Big.Bang.Theory.S01E01.mp4
- ├── The.Big.Bang.Theory.S01E02.mkv
- ├── Subtitle1.srt
- ├── Subtitle2.srt


### After Running:
📁 The Big Bang Theory /
- ├── The.Big.Bang.Theory.S01E01.mp4
- ├── The.Big.Bang.Theory.S01E02.mkv
- ├── The.Big.Bang.Theory.S01E01.srt
- ├── The.Big.Bang.Theory.S01E02.srt


## ⚠️ Notes
- If the number of video files **does not match** the number of subtitle files, the script will show a warning.
- If no video or subtitle files are found, the script will notify you.

## Troubleshooting
- If the script **closes too quickly**, open a command prompt and run:
  ```sh
  rename_subtitles.bat

Ensure Python is installed and accessible via python --version.

## License
This script is open-source and free to use. Contributions are welcome!

