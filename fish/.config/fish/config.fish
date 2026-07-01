# ==========================================
# BASH CONFIGURATION BRIDGES (SHARED FILES)
# ==========================================

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
