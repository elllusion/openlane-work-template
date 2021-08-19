#!/bin/zsh

# 修改zsh命令执行历史文件目录，避免将过多的历史写到主历史记录文件
export HISTFILE=$PWD/.zsh_history

if [ -e $OPENLANE_ROOT ]; then
export OPENLANE_ROOT=`pwd`
fi

if [ -e $PDK_ROOT ]; then
export PDK_ROOT=/usr/share/pdk
fi

go_docker(){
 newgrp docker
}

