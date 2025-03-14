@echo off & python -x "%~f0" %* & goto :eof

# ==========================================================
# Batch + Python script to rename subtitle files
# This script matches subtitle files with corresponding video files
# and renames them to match the video file names.
#
# How it works:
# - Finds video files (.mp4, .mkv, .avi, .mov)
# - Finds subtitle files (.srt, .ass, .vtt)
# - Matches subtitles to videos in order
# - Renames subtitles to match video file names
#
# Usage:
# - Place this script in the folder containing your videos and subtitles
# - Run the .bat file
# ==========================================================

import os

# Supported file extensions
video_ext = ['.mp4', '.mkv', '.avi', '.mov']
subtitle_ext = ['.srt', '.ass', '.vtt']

# Get all files in the directory
files = sorted(os.listdir(), key=str.lower)

# Separate video and subtitle files
video_files = [f for f in files if os.path.splitext(f)[1] in video_ext]
subtitle_files = [f for f in files if os.path.splitext(f)[1] in subtitle_ext]

if len(video_files) == 0:
    print("No video files found! Make sure you're in the correct folder.")
elif len(subtitle_files) == 0:
    print("No subtitle files found! Make sure subtitles are in the folder.")
elif len(video_files) != len(subtitle_files):
    print("Warning: The number of video files does not match the number of subtitle files.")
    print("Ensure subtitles are in the correct order and try again.")
else:
    for vid, sub in zip(video_files, subtitle_files):
        sub_ext = os.path.splitext(sub)[1]  # Get subtitle file extension
        new_name = os.path.splitext(vid)[0] + sub_ext  # Rename subtitle to match video
        os.rename(sub, new_name)

    print("Subtitle renaming completed successfully!")

input("Press Enter to exit...")
