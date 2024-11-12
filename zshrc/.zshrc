# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode reminder

plugins=(
	git
	zsh-autosuggestions
	zsh-completions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

function connect {
  ssh eric.najork@AMB-X7Q523.local -L 3004:localhost:3004 -L 3005:localhost:3005 -L 9229:localhost:9229 -L 9228:localhost:9228 -L 5432:localhost:5432 -L 3000:localhost:3000 -L 3006:localhost:3006 -L 62195:localhost:62195 -L 8082:localhost:8082 -L 8080:localhost:8080 -q
}

alias ssht='connect'
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
alias sshs="ssh -D 1080 -q -C -N eric.najork@AMB-X7Q523.local"
alias sshfs="sshfs eric.najork@AMB-X7Q523.local:/Users/eric.najork /home/eric/work"
alias neofetch="fastfetch"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
