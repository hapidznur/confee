#!/usr/bin/env bash

set -e

CWD=$(pwd)
printf "$CWD"
printf "# Syncing to home folder...\n"

function syncFile() {
    local sourceFile="$1"
    local targetFile="$2"
    ln -sf $CWD/${sourceFile} "$HOME/${targetFile}"
}

function doSync() {
    mkdir "$HOME/.config/nvim"
    syncFile nvim/init.lua ".config/nvim/init.lua"
    mkdir "$HOME/.config/nvim/lua"
    mkdir "$HOME/.config/nvim/lua/plugins"
    mkdir "$HOME/.config/nvim/lua/plugins/lsp"
    mkdir "$HOME/.config/nvim/lua/user"
    syncFile "nvim/lua/user/*.lua" ".config/nvim/lua/user"
    syncFile "nvim/lua/plugins/*.lua" ".config/nvim/lua/plugins"
    syncFile "nvim/lua/plugins/lsp/*.lua" ".config/nvim/lua/plugins/lsp"
    return 0
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doSync
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
	    doSync
    else
        printf "Skipped.\n\n"
	fi
fi
unset doSync
