#!/bin/bash
SOURCE_DIR="/plex-stack-config/config/calibre-config/calibre-library"
TARGET_DIR="/plex-stack-config/config/calibre-kindle/upload"

# Find all .epub files in the source directory and copy to the target directory
find "$SOURCE_DIR" -type f -name "*.epub" -exec cp -n {} "$TARGET_DIR" \;

