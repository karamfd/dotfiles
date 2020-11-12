# Start the shell 10 times to see how long it takes to start each time
# for i in $(seq 1 10); do /usr/bin/time zsh -i -c exit; done

# What's making my shell slow?
zmodload zsh/zprof          # run with the zprof command

# -----------------
# Options
# -----------------
setopt NO_CASE_GLOB         # wildcard completion is not case sensitive
setopt HIST_FIND_NO_DUPS    # ignore duplicates when searching
setopt HIST_IGNORE_ALL_DUPS # remove duplicate commands from history
setopt HIST_IGNORE_SPACE    # ignore lines starting with a space
setopt HIST_REDUCE_BLANKS   # remove blank lines from history
setopt INTERACTIVE_COMMENTS # enable comments in your shell
setopt SHARE_HISTORY        # share history across multiple zsh sessions

# ***********************************************
# Load everything below manually to avoid
# getting errors when the terminal starts
# ***********************************************

# -----------------
# Features
# -----------------

# Starship Prompt
eval "$(starship init zsh)"

# Completions
fpath=(~/.zsh/plugins/zsh-completions/src $fpath)
source ~/.zsh/completion.zsh
autoload -Uz compinit && compinit

# Node version manager: N
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

# Auto Suggestions
export ZSH_AUTOSUGGEST_USE_ASYNC=true
export ZSH_AUTOSUGGEST_MANUAL_REBIND=false
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# Syntax Highlighting
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh