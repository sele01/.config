# 📓 Ultimate Terminal Tools & Workspace Guide

This guide covers the controls, keyboard shortcuts, and configurations for all the lightweight tools installed on your Arch Linux system.

---

## 🚀 Part 1: Core System & Window Shortcuts
These are your global Hyprland desktop control binds.

| Shortcut | Action |
| :--- | :--- |
| `SUPER + Return` | Open Kitty Terminal |
| `SUPER + C` | Close Active Window |
| `SUPER + Space` | Cycle focus to next window |
| `SUPER + W` | Dismiss active notification pop-up |
| `SUPER + SHIFT + M` | Exit Hyprland (Back to Ly login screen) |
| `SUPER + R` | Open Application Launcher (Rofi) |
| `SUPER + V` | Search & Paste Clipboard History (Cliphist) |

---

## 🗺️ Part 2: Workspace Navigation & Movement
How you navigate and organize your screens.

### 👁️ Focus (Move your eyes)
*   `SUPER + Q` -> Switch to Workspace 1 (Laptop Screen)
*   `SUPER + A` -> Switch to Workspace 2 (Coding/Craft)
*   `SUPER + O` -> Switch to Workspace 3 (Zen Browser)
*   `SUPER + E` -> Switch to Workspace 4 (Firefox/Testing)

### 📦 Movement (Move your active window)
*   `SUPER + SHIFT + Q` -> Send window to Workspace 1
*   `SUPER + SHIFT + A` -> Send window to Workspace 2
*   `SUPER + SHIFT + O` -> Send window to Workspace 3
*   `SUPER + SHIFT + E` -> Send window to Workspace 4

### 🗃️ Sliding Drawers (Scratchpads)
*   `SUPER + L` -> Toggle "Read" scratchpad (Focus Read app)
*   `SUPER + S` -> Toggle "Notes" scratchpad (Obsidian / Neovide)

---

## 📂 Part 3: Tool-Specific Controls & Commands

### 1. Yazi (File Manager)
*   **How to Launch:** Type `yazi` in terminal.
*   **Essential Keys:**
    *   `h` / `l` -> Go back a folder / Open folder or file
    *   `j` / `k` -> Move down / Move up
    *   `Space` -> Select / multi-select files
    *   `d` -> Delete selected files
    *   `y` / `x` -> Copy (Yank) / Cut
    *   `p` -> Paste copied/cut files
    *   `q` -> Quit Yazi

### 2. Lazygit (Git Terminal Interface)
*   **How to Launch:** Type `lazygit` in any directory with a Git repository.
*   **Essential Keys:**
    *   `1` / `2` / `3` / `4` / `5` -> Switch panels (Files, Branches, Commits, Stash)
    *   `Space` -> Stage/unstage file
    *   `c` -> Commit changes (type message and press Enter)
    *   `P` -> Push commits to GitHub/remote
    *   `p` -> Pull latest updates
    *   `Esc` or `q` -> Exit Lazygit

### 3. Btop (System Monitor)
*   **How to Launch:** Type `btop` in terminal.
*   **Essential Keys:**
    *   `Esc` -> Open settings menu
    *   `j` / `k` (or arrow keys) -> Select running processes
    *   `f` -> Filter processes by name
    *   `k` -> Terminate (kill) selected process
    *   `q` -> Quit Btop

### 4. Ytfzf (Terminal YouTube)
*   **How to Launch:** Type `ytfzf "<search terms>"` in terminal.
*   **Essential Keys:**
    *   `j` / `k` -> Move up and down the list of search results
    *   `Tab` -> Select multiple videos to queue them up
    *   `Enter` -> Start playing the selected video in `mpv`
*   **Inside the Video Player (mpv):**
    *   `Space` -> Pause / Play
    *   `Right Arrow` / `Left Arrow` -> Skip forward / backward 5 seconds
    *   `9` / `0` -> Volume down / Volume up
    *   `f` -> Toggle Fullscreen
    *   `q` -> Quit video and return to terminal

### 5. Cbonsai (The Bonsai Tree)
*   **How to Launch:** Run one of the following commands in an empty terminal tile.
*   **Command Variants:**
    *   `cbonsai` -> Renders a static, fully grown tree.
    *   `cbonsai -l` -> Watches the tree grow branch-by-branch in real time.
    *   `cbonsai -i -l` -> Loop mode: grows a tree, clears it, and grows a new unique tree infinitely.

### 6. Ncmpcpp & MPD (Local Music Player)
*   **How to Setup:** Start the background daemon first: `systemctl --user enable --now mpd`
*   **How to Launch:** Type `ncmpcpp` in terminal.
*   **Essential Keys:**
    *   `1` / `2` / `3` / `4` / `5` -> Switch views (Playlist, Browser, Media Library, Visualizer)
    *   `Space` -> Pause / Play
    *   `s` -> Stop playing
    *   `c` -> Clear current playlist
    *   `q` -> Quit

---

## 🛠️ Part 4: Custom Utility Scripts
*   `SUPER + SHIFT + C`     -> Select/connect to Wi-Fi networks via Rofi
*   `SUPER + SHIFT + V`     -> Open custom system AI prompt
*   `SUPER + SHIFT + Space` -> Toggle voice-to-text recording (Voxtype)
