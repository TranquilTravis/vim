#! /bin/sh

cp vimrc_file ~/.vimrc
VIMDIR=$HOME/.vim
if [ ! -d "$VIMDIR" ]; then
		mkdir $VIMDIR
fi
cp -r autoload $VIMDIR/
cp -r ftplugin $VIMDIR/
[[ -z "$XDG_CONFIG_HOME" ]] && XDG_CONFIG_HOME=$HOME/.config
NVIM_CONF_DIR=$XDG_CONFIG_HOME/nvim
echo $NVIM_CONF_DIR
if [ ! -d "$NVIM_CONF_DIR" ]; then
		mkdir $NVIM_CONF_DIR
fi
cp vimrc_file $NVIM_CONF_DIR/init.vim
