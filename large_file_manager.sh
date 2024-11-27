#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define the extensions to chunk-down
EXTENSIONS=("*.tar.gz" "*.model")

# Function to split files
split_files() {
  for ext in "${EXTENSIONS[@]}"; do
    find "$SCRIPT_DIR" -type f -name "$ext" -size +100M | while read -r file;
    do
      echo "Splitting: $file"
      split -b 100M "$file" "${file}_chunk_"
      if [ $? -eq 0 ]; then
        relative_path=$(echo "$file" | sed "s|^$SCRIPT_DIR/||")
        if ! grep -q "$relative_path" "$SCRIPT_DIR/.gitignore"; then
          echo "Git-Ignoring: $relative_path"
          echo "$relative_path" >> "$SCRIPT_DIR/.gitignore"
        fi
      fi
    done
  done
}

# Function to recombine files
recombine_files() {
  find "$SCRIPT_DIR" -type f -name "*_chunk_*" | sed 's/_chunk_.*//' | sort -u | while read -r prefix; 
  do
    echo "Recombining: $prefix"
    cat "${prefix}_chunk_"* > "$prefix"
  done
}

split_files
recombine_files
