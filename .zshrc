# -----------------------------------------------
# Options:
# - enable with setopt: setopt AUTO_CD
# - disable with either option below:
#   unsetopt AUTO_CD
#   setopt NO_AUTO_CD
# -----------------------------------------------

# Share history across multiple sessions
setopt SHARE_HISTORY
# Do not store duplications
setopt HIST_IGNORE_ALL_DUPS
# Remove blank lines from history
setopt HIST_REDUCE_BLANKS
# Ignore lines starting with a space
setopt HIST_IGNORE_SPACE

# ***********************************************
# Add everything below manually to avoid
# getting errors when starting a new shell
# ***********************************************

# Starship Prompt
eval "$(starship init zsh)"

# Node version manager: N
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

# -----------------------------------------------
# Plugins: must be at the end of the file
# -----------------------------------------------

# zsh-autocomplete
source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh