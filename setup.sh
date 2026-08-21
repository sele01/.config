#!/usr/bin/env bash
# Navigate to the directory where this script lives
cd "$(dirname "${BASH_SOURCE}")"

echo "Deploying configurations via GNU Stow..."

# Loop through every directory and stow it safely
for dir in */; do
    # Strip trailing slash
    dir_clean=${dir%/}
    
    # Skip hidden folders like .git
    if [[ "$dir_clean" == .* ]]; then
        continue
    fi
    
    # EXCLUDE THE NOTES DIRECTORY FROM STOWING
    if [[ "$dir_clean" == "myshorts" ]]; then
        echo "- Skipped tracking folder: $dir_clean"
        continue
    fi
    
    stow "$dir_clean"
    echo "✓ Linked package: $dir_clean"
done

echo "All profiles deployed successfully!"
