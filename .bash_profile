alias gits='git status'

# Git branch in prompt.

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u:\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "


if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
