#!/bin/bash

base_dir="$( dirname "${BASH_SOURCE[0]}" )"
temp_dir="/.commitTemp.txt"
cd $base_dir
cur_dir=`pwd`
chmod 777 commit-msg
git config commit.template $cur_dir$temp_dir
git config core.hooksPath $base_dir
echo "小伙子很有觉悟,加油！💚"
cd -
