# export RANGER_LOAD_DEFAULT_RC=FALSE

export EDITOR="nvim"
export VISUAL="codium"
export TERMINAL="st"
export BROWSER="brave"
export FILES="ranger"
export EMAIL="thunderbird"
export PDF="zathura"

export MANPAGER="/bin/sh -c \"col -b | vim --not-a-term -c 'set ft=man ts=8 nomod nolist noma' -\""

export ZDOTDIR="$HOME/.config/zsh"

export RANGER_LOAD_DEFAULT_RC=FALSE

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

# if [ -d "$HOME/.local/bin" ] ;
#   then PATH="$HOME/.local/bin:$PATH"
# fi

if [ -d "$HOME/.local/bin" ] ;
  then export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
fi


