PATH=$PATH:~/bin

black=30
red=31
green=32
yellow=33
blue=34
magenta=35
cyan=36
lightGray=37
darkGray=90
lightRed=91
lightGreen=92
lightYellow=93
lightBlue=94
lightMagenta=95
lightCyan=96
white=97

#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;${green}m\]\u@\h\[\033[00m\]:\[\033[01;${blue}m\]\w\[\033[00m\]\$ '

parse_git_branch ()
{
    branch=$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/( \1 )/')

    if [ -n "$branch" ]; then
      echo $branch
    fi
}

PS1='\[\033[01;${blue}m\]\w\[\033[00m\]' #directory location
PS1=$PS1'\[\033[01;${green}m\]$(parse_git_branch)\[\033[00m\]\$ ' #git branch

export PS1

# alias

