#!/bin/bash

echo "Warning: this will overwrite your configuration in ~/.vimrc, ~/.tmux.conf, ~/.bash_aliases, and ~/.bashrc"

read -p "Continue (y/n)?" choice
case "${choice}" in
	y|Y )
		echo "Moving files ..."
		cp ./.vimrc ~/.vimrc
		cp ./.tmux.conf ~/.tmux.conf
		cp ./.bash_aliases ~/.bash_aliases
		cp ./.bashrc ~/.bashrc
		echo "Done!"
		exit 0 ;;
	n|N )
		echo "Quiting ..."
		exit 0 ;;
	* )
		echo "Quiting ..."
		exit 0 ;;
esac
