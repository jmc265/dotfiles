# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions docker-compose docker npm yarn sudo terraform vscode web-search history)

source $ZSH/oh-my-zsh.sh
source $HOME/.zshrc_secrets

# History settings - http://zsh.sourceforge.net/Guide/zshguide02.html#l17
export HISTSIZE=2000000
export SAVEHIST=2000000
export HISTFILE=~/.zsh_history

# Save each command's beginning timestamp (in seconds since the epoch) and the duration (in seconds) to the history file.
setopt EXTENDED_HISTORY

# This option both imports new commands from the history file, and also causes your typed commands to be appended to the history file.
setopt SHARE_HISTORY

# If this is set, zsh sessions will append their history list to the history file, rather than replace it. Thus, multiple parallel zsh sessions will all have the new entries from their history lists added to the history file, in the order that they exit.
setopt APPEND_HISTORY

# This option works like APPEND_HISTORY except that new history lines are added to the $HISTFILE incrementally (as soon as they are entered), rather than waiting until the shell exits.
setopt INC_APPEND_HISTORY

# If the internal history needs to be trimmed to add the current command line, setting this option will cause the oldest history event that has a duplicate to be lost before losing a unique event from the list. 
setopt HIST_EXPIRE_DUPS_FIRST

# Do not enter command lines into the history list if they are duplicates of the previous event.
setopt NO_HIST_IGNORE_DUPS

# When searching for history entries in the line editor, do not display duplicates of a line previously found, even if the duplicates are not contiguous.
setopt HIST_FIND_NO_DUPS

# Remove superfluous blanks from each command line being added to the history list.
setopt HIST_REDUCE_BLANKS

# If a new command line being added to the history list duplicates an older one, the older command is removed from the list (even if it is not the previous event).
setopt NO_HIST_IGNORE_ALL_DUPS

# Remove command lines from the history list when the first character on the line is a space, or when one of the expanded aliases contains a leading space.
setopt HIST_IGNORE_SPACE

# When writing out the history file, older commands that duplicate newer ones are omitted.
setopt NO_HIST_SAVE_NO_DUPS

# Whenever the user enters a line with history expansion, don’t execute the line directly; instead, perform history expansion and reload the line into the editing buffer.
setopt HIST_VERIFY

# Remove the history (fc -l) command from the history list when invoked. Note that the command lingers in the internal history until the next command is entered before it vanishes, allowing you to briefly reuse or edit the line.
setopt NO_HIST_NO_STORE

# User configuration
alias ll="ls -FGlAhp"
alias cd..='cd ../'
alias ..='cd ../'
alias ...='cd ../../'
alias dk='docker'
alias dco='docker-compose'
alias tf='terraform'
alias g="git"
alias gac='f() { git add -A; git commit -m "$1" };f'
alias history='fc -i -l 1'

export LANG=en_GB.UTF-8
export LC_CTYPE=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8
export EDITOR='code-insiders --wait'
export PATH=${HOME}/bin:$PATH

# Remove username and host from prompt
prompt_context(){}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Provide Homebrew completions (if installed).
# See https://docs.brew.sh/Shell-Completion
if type brew &> /dev/null; then
    FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# Enable Node Version Manager.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Provide Node completions.
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Print some motd bits
clear
neofetch --disable packages
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
export GPG_TTY=$(tty)
