# ==========================================
# BASH CONFIGURATION BRIDGES (SHARED FILES)
# ==========================================
fish_add_path ~/.local/bin

# 1. Load the shared typing environment safely
if test -f ~/.typing
    bass source ~/.typing
end

# 2. Load the shared system aliases safely 
if test -f ~/.aliases
    bass source ~/.aliases
end

# Initialize Zoxide for Fish
zoxide init fish | source

# Created by `pipx` on 2026-07-09 07:23:47

# 1. Load secret API keys safely (keeps them out of Git)
test -f (status dirname)/secrets.fish; and source (status dirname)/secrets.fish

# 2. Pyenv setup
set -gx PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
pyenv init - | source

# 3. Add local binaries to PATH (clean, non-duplicate prepending)
set -gx PATH $HOME/.local/bin $PATH

# >>> railway initialize >>>
source "$HOME/.railway/env.fish"
# <<< railway initialize <<<

# 4. Launch fastfetch on startup
fastfetch# Created by `pipx` on 2026-07-09 07:23:47

# 1. Load secret API keys safely (keeps them out of Git)
test -f (status dirname)/secrets.fish; and source (status dirname)/secrets.fish

# 2. Pyenv setup
set -gx PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
pyenv init - | source

# 3. Add local binaries to PATH (clean, non-duplicate prepending)
set -gx PATH $HOME/.local/bin $PATH

# >>> railway initialize >>>
source "$HOME/.railway/env.fish"
# <<< railway initialize <<<

# 4. Launch fastfetch on startup
fastfetch# Created by `pipx` on 2026-07-09 07:23:47

# 1. Load secret API keys safely (keeps them out of Git)
test -f (status dirname)/secrets.fish; and source (status dirname)/secrets.fish

# 2. Pyenv setup
set -gx PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
pyenv init - | source

# 3. Add local binaries to PATH (clean, non-duplicate prepending)
set -gx PATH $HOME/.local/bin $PATH

# >>> railway initialize >>>
source "$HOME/.railway/env.fish"
# <<< railway initialize <<<

# 4. Launch fastfetch on startup
fastfetch
