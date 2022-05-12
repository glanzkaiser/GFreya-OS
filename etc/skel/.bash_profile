if [ -f "$HOME/.bashrc" ] ; then
       source $HOME/.bashrc
fi

if [ -d "$HOME/bin" ] ; then
	pathprepend $HOME/bin
fi
