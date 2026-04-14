# BASH ALIASES

# =========================
# SYSTEM
# =========================
alias ll='ls -alFth'
alias la='ls -A'
alias l='ls -CF'
alias cls='clear'

# =========================
# NAVIGATION
# =========================
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# =========================
# FILE MANAGEMENT
# =========================
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# =========================
# GIT
# =========================
alias g='git'
alias gs='git status'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit -m'
alias gca='git commit --amend'
alias gp='git push'
alias gpl='git pull'
alias gl='git log --oneline --graph --decorate'
alias gb='git branch'
alias gco='git checkout'
alias gcb='git checkout -b'

# =========================
# DOCKER
# =========================
alias d='docker'
alias dc='docker compose'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias di='docker images'
alias dlog='docker logs -f'
alias dexec='docker exec -it'
alias dstop='docker stop $(docker ps -q)'
alias drm='docker rm $(docker ps -aq)'
alias drmi='docker rmi $(docker images -q)'

# =========================
# SYSTEM ADMIN
# =========================
alias update='sudo apt update && sudo apt upgrade -y'
alias install='sudo apt install -y'
alias remove='sudo apt remove -y'
alias ports='ss -tulpen'
alias myip='curl -s ifconfig.me'

# =========================
# DISK & USAGE
# =========================
alias dfh='df -h'
alias duh='du -sh *'

# =========================
# PROCESS
# =========================
alias psg='ps aux | grep -i'
alias top='htop'

# =========================
# NETWORK
# =========================
alias pingg='ping google.com'
alias wgetc='wget -c'

# =========================
# SECURITY / ROOT
# =========================
alias root='sudo -i'

# =========================
# QUICK EDIT
# =========================
alias bashrc='nano ~/.bashrc'
alias aliases='nano ~/.bash_aliases'
alias reload='source ~/.bashrc'

# =========================
# FUNCTIONS
# =========================

# Create directory and enter it
mkcd() {
  mkdir -p "$1" && cd "$1" || return
}

# Extract any archive easily
extract() {
  if [ -f "$1" ]; then
    case "$1" in
      *.tar.bz2) tar xjf "$1" ;;
      *.tar.gz) tar xzf "$1" ;;
      *.bz2) bunzip2 "$1" ;;
      *.rar) unrar x "$1" ;;
      *.gz) gunzip "$1" ;;
      *.tar) tar xf "$1" ;;
      *.tbz2) tar xjf "$1" ;;
      *.tgz) tar xzf "$1" ;;
      *.zip) unzip "$1" ;;
      *.7z) 7z x "$1" ;;
      *) echo "Format non supporté" ;;
    esac
  else
    echo "Fichier invalide"
  fi
}

# Find file quickly
ff() {
  find . -type f -iname "*$1*"
}

# Find process
fproc() {
  ps aux | grep -i "$1" | grep -v grep
}

# Create and enter project structure
mkproj() {
  mkdir -p "$1"/{src,config,logs,docker}
  cd "$1" || return
}

# Quick backup
backup() {
  cp "$1" "$1.bak"
}

# Show disk usage sorted
dusort() {
  du -sh * | sort -h
}
