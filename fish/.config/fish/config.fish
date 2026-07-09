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
set PATH $PATH /home/skymoon/.local/bin

#API from openroute
set -gx OPENROUTER_API_KEY  "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"
