# export RANGER_LOAD_DEFAULT_RC=FALSE

export EDITOR="nvim"
export TERMINAL="termite"

export ZDOTDIR="$HOME/.config/zsh"

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

# if [ -d "$HOME/.local/bin" ] ;
#   then PATH="$HOME/.local/bin:$PATH"
# fi

if [ -d "$HOME/.local/bin" ] ;
  then export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
fi


