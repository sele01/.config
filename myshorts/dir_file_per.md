# Comprehensive Terminal Guide: Files, Directories, Operations & Line Editing

## 1. Directory Navigation & Inspection
```bash
cd -              # Toggle back to your exact previous working directory
cd ..             # Move up exactly one directory level
cd                # Jump straight back to your user home directory
pwd               # Print the absolute path of your current directory
ls -la            # List all items, including hidden files, with full details
tree -L 2         # Graphically view directory structure up to 2 levels deep
```

## 2. Advanced Creation & Initialization
```bash
touch file.txt       # Create an empty file, or update an existing file's timestamp
mkdir -p a/b/c       # Create nested parent folders all at once without errors
touch file{1..5}.txt # Bulk create file1.txt through file5.txt instantly
mkdir dir_{A,B,C}    # Generate multiple unique directories in one shot
> log.txt            # Completely empty an existing file, or create it if missing
cat > notes.txt      # Type directly into terminal; press Ctrl+D to save and exit
```

## 3. Bulk Manipulation & Backups
```bash
cp file.txt{,.bak}   # Quick backup: copies file.txt to file.txt.bak
cp -r dir1/ dir2/    # Recursively copy an entire folder and its contents
mv old.txt new.txt   # Rename a file, or move it if the destination is a folder
mv *.jpg images/     # Move all JPEG files in the current folder into a directory
rm file.txt          # Delete a specific file permanently
rm -rf folder/       # Forcefully delete a folder and everything inside it
```

## 4. Symlinks & Hard Links (Creation, Inspection & Repair)
```bash
ln -s /path/to/target link_name  # Create a symbolic link (pointer) to a file or folder
ln /path/to/file hardlink_name   # Create a hard link (shares the exact same data blocks)
ls -l link_name                  # Inspect a link to see exactly where it points
unlink link_name                 # Safely delete a symlink without touching original file
rm link_name                     # Alternative way to remove a symlink file
find . -type l -eval test ! -e {} \; -print  # Find all broken symlinks in current directory
find . -type l -eval test ! -e {} \; -delete # Find and automatically delete broken symlinks
```

## 5. Searching & Content Inspection
```bash
cat file.txt         # Print the entire contents of a file to the screen
less log.txt         # View large files safely; navigate with arrows, press Q to exit
head -n 20 file.txt  # Output only the first 20 lines of a file
tail -f file.txt     # Watch a log file update in real-time as content is appended
grep "error" f.txt   # Search and highlight a specific text string inside a file
grep -rn "API_KEY" . # Recursively search all files in current directory for a string
find . -name "*.log" # Search for files by name patterns starting from current directory
```

## 6. File Permissions & Ownership (chmod / chown)
```bash
chmod +x script.sh   # Make a script file executable
chmod 600 secret.txt # Restrict file so only the owner can read and write it
chmod 755 script.sh  # Owner can do everything; others can only read and execute
chown user:group f.txt # Change both the owner and the group of a file
chown -R user dir/   # Change ownership of a directory and everything inside it
```

## 7. Remote Transfers & Syncing (scp / rsync)
```bash
scp file.txt user@ip:/path/   # Copy a local file securely to a remote server
scp user@ip:/path/f.txt .     # Download a file from a remote server to local machine
rsync -avz local/ user@ip:/r/ # Efficiently sync local folder to remote (delta transfer)
rsync -avz --progress d1/ d2/ # Copy directories locally with a visual progress bar
```

## 8. Archiving & Compression (tar / zip)
```bash
tar -czvf archive.tar.gz dir/ # Compress an entire folder into a .tar.gz archive
tar -xzvf archive.tar.gz      # Extract a .tar.gz archive into the current directory
zip -r backup.zip folder/     # Compress a folder into a standard .zip file
unzip backup.zip              # Extract a standard .zip file
```

## 9. Shell History & Argument Reuse
```bash
Alt + .          # Insert the very last argument of your previous command
!*               # Insert all arguments from your previous command
!!               # Rerun the entire last command (e.g., sudo !!)
!mkdir           # Rerun the most recent command that started with "mkdir"
Ctrl + R         # Open an interactive search history to find past commands
```

## 10. Pro Line Editing & Terminal Shortcuts
```bash
Ctrl + A         # Jump your cursor straight to the start of the command line
Ctrl + E         # Jump your cursor straight to the end of the command line
Ctrl + W         # Delete the single word directly behind your cursor
Ctrl + U         # Clear the entire line from the cursor back to the start
Ctrl + K         # Clear the entire line from the cursor forward to the end
Ctrl + L         # Clear the terminal screen without losing your current input
```
