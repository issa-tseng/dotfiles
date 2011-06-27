#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/usr/X11/lib/X11/xinit/.Xresources
sysmodmap=/usr/X11/lib/X11/xinit/.Xmodmap

# merge in defaults and keymaps

export TERM=rxvt-256color
export SHELL=/bin/zsh
export LANG=en_US.UTF-8
export RXVT_SOCKET=$HOME/.rxvt-unicode-durindana

if [ -f $sysresources ]; then

    if [ -x /usr/bin/cpp ] ; then
        xrdb -merge $sysresources
    else
        xrdb -nocpp -merge $sysresources
    fi



fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    if [ -x /usr/bin/cpp ] ; then
        xrdb -merge "$userresources"
    else
        xrdb -nocpp -merge "$userresources"
    fi



fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

/usr/X11/lib/X11/xinit/xinitrc.d/10-fontdir.sh
quartz-wm --only-proxy &
/usr/local/bin/urxvtd -q -f -o &

cd $HOME
exec $HOME/.cabal/bin/xmonad 2> ~/.xsessionerrors

