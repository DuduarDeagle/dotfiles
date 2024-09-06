# ============================================================================ #
# Duduar's dotfiles                                                            #
#                                                                              #
# Zsh configuration file                                                       #
# Copyright (c) 2024 Duduar Deagle                                             #
# ============================================================================ #
# Licensed under the Apache License, Version 2.0 (the "License"); you must not #
# use this file except in compliance with the License. You may obtain a copy   #
# of the License with this file or you must obtain a copy of the License at:   #
#                                                                              #
# https://www.apache.org/licenses/LICENSE-2.0                                  #
#                                                                              #
# Unless required by applicable law or agreed to in writing,                   #
# software distributed under the License is distributed on an "AS IS" BASIS,   #
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.     #
# See the License for the specific language governing permissions and          #
# limitations under the License.                                               #
# ============================================================================ #

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

bindkey -e

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

export GPG_TTY=$(tty)
keep_current_path() {
  printf "\e]9;9;%s\e\\" "$(wslpath -w "$PWD")"
}
precmd_functions+=(keep_current_path)

# ============================================================================ #
# Plugins                                                                      #
# ============================================================================ #
eval "$(oh-my-posh init zsh --config $HOME/repositories/dotfiles/zsh/theme.omp.json)"
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(zoxide init zsh)"
# == sudo
__sudo-replace-buffer() {
  local old=$1 new=$2 space=${2:+ }

  if [[ $CURSOR -le ${#old} ]]; then
    BUFFER="${new}${space}${BUFFER#$old }"
    CURSOR=${#new}
  else
    LBUFFER="${new}${space}${LBUFFER#$old }"
  fi
}

sudo-command-line() {
  [[ -z $BUFFER ]] && LBUFFER="$(fc -ln -1)"

  local WHITESPACE=""
  if [[ ${LBUFFER:0:1} = " " ]]; then
    WHITESPACE=" "
    LBUFFER="${LBUFFER:1}"
  fi

  {
    local EDITOR=${SUDO_EDITOR:-${VISUAL:-$EDITOR}}

    if [[ -z "$EDITOR" ]]; then
      case "$BUFFER" in
        sudo\ -e\ *) __sudo-replace-buffer "sudo -e" "" ;;
        sudo\ *) __sudo-replace-buffer "sudo" "" ;;
        *) LBUFFER="sudo $LBUFFER" ;;
      esac
      return
    fi

    local cmd="${${(Az)BUFFER}[1]}"
    local realcmd="${${(Az)aliases[$cmd]}[1]:-$cmd}"
    local editorcmd="${${(Az)EDITOR}[1]}"

    if [[ "$realcmd" = (\$EDITOR|$editorcmd|${editorcmd:c}) \
      || "${realcmd:c}" = ($editorcmd|${editorcmd:c}) ]] \
      || builtin which -a "$realcmd" | command grep -Fx -q "$editorcmd"; then
      __sudo-replace-buffer "$cmd" "sudo -e"
      return
    fi

    case "$BUFFER" in
      $editorcmd\ *) __sudo-replace-buffer "$editorcmd" "sudo -e" ;;
      \$EDITOR\ *) __sudo-replace-buffer '$EDITOR' "sudo -e" ;;
      sudo\ -e\ *) __sudo-replace-buffer "sudo -e" "$EDITOR" ;;
      sudo\ *) __sudo-replace-buffer "sudo" "" ;;
      *) LBUFFER="sudo $LBUFFER" ;;
    esac
  } always {
    LBUFFER="${WHITESPACE}${LBUFFER}"

    zle && zle redisplay
  }
}

zle -N sudo-command-line

bindkey -M emacs '\e\e' sudo-command-line
bindkey -M vicmd '\e\e' sudo-command-line
bindkey -M viins '\e\e' sudo-command-line

# ============================================================================ #
# Environment variables                                                        #
# ============================================================================ #
export PATH="$HOME/.local/bin:$PATH"
# == ranger
export RANGER_LOAD_DEFAULT_RC=false
export VISUAL=nvim
export EDITOR=nvim
# == volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
# == bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# ============================================================================ #
# Keyboard shortcuts                                                           #
# ============================================================================ #
# == system
alias cl="clear"
alias x="exit"
alias l="exa -l --group-directories-first --header --no-icons"
alias la="exa -la --group-directories-first --header --no-icons"
alias t="erd -lIs name --dir-order last -d logical -y inverted -T 12"
alias p3="python3"
alias icat="kitten icat"
# == clipboard
alias cpc="xclip -sel clip -rmlastnl"
alias clc="xclip -sel clip < /dev/null"
# == neovim
alias vi="nvim"
alias vim="nvim"
# == git
alias g="git"
alias gcl="git clone"
alias gi="git init"
alias gst="git st"
alias ga="git add"
alias gap="git add -p"
alias gd="git diff"
alias gdc="git diff --cached"
alias gr="git reset"
alias gc="git commit"
alias gca='git commit --amend'
alias gt="git tag"
alias gmg="git merge"
alias gl="git lg -n 20"
alias glc="git lg"
alias glg="git log"
alias gs="git show"
alias gck="git checkout"
alias grb="git rebase"
alias gbr="git branch"
alias gsw="git switch"
alias grt="git remote"
alias gp="git push"
alias gpt="git push --tags"
alias gf="git fetch"
alias gpl="git pull"
# == bun
alias b="bun"
alias bx="bunx"
alias bc="bun create"
alias bi="bun install"
alias ba="bun add -E"
alias bad="bun add -Ed"
alias bag="bun add -Eg"
alias brm="bun rm"
alias br="bun run"
alias bu="bun update"
alias bud="bun upgrade"
