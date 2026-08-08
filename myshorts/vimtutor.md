# Vim & Neovim Mastery Guide

> *“Vim is not just a text editor; it is a modal language for manipulating text at the speed of thought.”*

---

## 📌 Executive Summary
This repository tracks the complete journey of mastering **Vim** and **Neovim**, progressing from fundamental modal navigation (`hjkl`) and textual grammar (`operator + count + motion`) to building a modern, high-performance IDE with Lua plugins, LSP code intelligence, and Treesitter syntax processing.

---

## 📑 VimTutor Core Cheatsheet

### 1. Basic Navigation & Modes
* `h` / `j` / `k` / `l` : Move Left / Down / Up / Right (Keep hands on home row)
* `i` : Enter **Insert Mode** before cursor
* `a` / `A` : Append text after cursor / Append at the end of line
* `o` / `O` : Open new line below / above cursor and enter Insert Mode
* `Esc` : Return to **Normal Mode**

### 2. File Operations & Quitting
* `:w` : Save file (Write)
* `:q!` : Quit without saving (Discard changes)
* `:wq` : Save and quit
* `:r FILENAME` : Read/insert file contents below cursor
* `:!command` : Execute external shell command (e.g., `:!ls`)

### 3. Text Editing & Deletion
* `x` : Delete character under cursor
* `dw` : Delete from cursor to start of next word
* `de` : Delete to end of current word
* `d$` : Delete from cursor to end of line
* `dd` : Delete entire line
* `r{char}` : Replace character under cursor with `{char}`
* `R` : Enter Replace Mode

### 4. Search, Navigation & Substitution
* `0` / `$` : Jump to start / end of line
* `gg` / `G` : Jump to first / last line of file
* `CTRL-G` : Show file location and status
* `/pattern` : Search forward (`n` next match, `N` previous match)
* `?pattern` : Search backward
* `%` : Jump to matching parenthesis `()`, bracket `[]`, or brace `{}`
* `:%s/old/new/g` : Substitute all occurrences of `old` with `new` in whole file

### 5. Grammar & Operators
Vim commands follow a powerful grammar: **`[operator] [count] [motion]`**
* **Operators**: `d` (delete), `c` (change), `y` (yank/copy), `v` (visual select)
* **Motions**: `w` (word), `e` (end of word), `$` (end of line)
* **Examples**:
  * `2w` : Move forward 2 words
  * `d2w` : Delete 2 words
  * `ce` : Change to end of word (deletes and enters Insert Mode)
  * `y` + `p` : Yank (copy) and Put (paste) text

---

## 🚀 Neovim Roadmap

```
Level 1: Core Muscle Memory ➔ Level 2: Text Grammar ➔ Level 3: Custom Neovim IDE
```

1. **Level 1 (Days 1–3)**: Master `hjkl`, switching modes (`i`, `Esc`), saving, and quitting.
2. **Level 2 (Weeks 1–2)**: Internalize operators, motions, word deletions, and search/replace patterns.
3. **Level 3 (Week 3+)**: Transition to **Neovim** with `Lua`, `LazyVim` / `NvChad`, `Telescope` (Fuzzy Finding), `Treesitter`, and built-in LSP integration.

