if [ -f "$HOME/.bashrc" ] ; then
       source $HOME/.bashrc
       source ~/export
fi

if [ -d "$HOME/bin" ] ; then
	pathprepend $HOME/bin
fi
