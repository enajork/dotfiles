# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Automatically run startx on tty1
if [[ -z $DISPLAY ]] && [[ $(tty) == /dev/tty1 ]]; then
   #exec startx
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

#export DISPLAY=:0
export XDG_SESSION_TYPE="x11"
export ZSH="$HOME/.oh-my-zsh"
export GTK_THEME="Adwaita:dark"
export QT_STYLE_OVERRIDE=Adwaita-Dark

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode reminder

plugins=(
	git
	zsh-autosuggestions
	zsh-completions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

alias cl='clear'
alias ~sz='source ~/.zshrc'
alias ~z='vim ~/.zshrc'
alias gs='git status'
alias gc='git commit'
alias gch='git checkout'
alias gp='git pull'
alias gr='git rebase'
alias gb='git branch'
alias ga='git add'
alias nv="nvim"
alias vim="nvim"
alias tn="tmux new -s"
alias ta="tmux attach -d -t"
alias tl="tmux ls"
alias k="kill"
alias ka="killall"
alias neofetch="fastfetch"
alias mm="~/.config/i3/main_monitor.sh"
alias copy="xclip -selection clipboard"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
