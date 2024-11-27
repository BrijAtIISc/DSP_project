#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Function to split files
split_files() {
  for ext in "*.tar.gz" "*.model"; do
    find "$SCRIPT_DIR" -type f -name "$ext" -size +100M | while read -r file;
    do
      echo "Splitting: $file"
      split -b 100M "$file" "${file}_chunk_"
      if [ $? -eq 0 ]; then
        echo "Deleting: $file"
        rm "$file"
      fi
    done
  done
}

# Function to recombine files
recombine_files() {
  find "$SCRIPT_DIR" -type f -name "*_chunk_*" | sed 's/_chunk_.*//' | sort -u | while read -r prefix; 
  do
    echo "Recombining Chunks: $prefix"
    cat "${prefix}_chunk_"* > "$prefix"
    if [ $? -eq 0 ]; then
      echo "Deleting Chunks: $prefix"
      rm "${prefix}_chunk_"*
    fi
  done
}

# Main script execution
case "$1" in
  split)
    split_files
    ;;
  recombine)
    recombine_files
    ;;
  *)
    echo "Usage: $0 {split|recombine}"
    exit 1
    ;;
esac
