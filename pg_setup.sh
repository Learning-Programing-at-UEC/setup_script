#! /bin/bash

# プログラミング教室用初期セットアップスクリプト
# pg_setup.shをそのまま実行してください
# python3専用の開発環境を構築します

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install python
brew install python3
brew link --overwrite python
pip install virtualenv
pip install virtualenvwrapper

cat <<EOF > ~/.bash_profile
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
EOF

cat <<EOF > ~/.bashrc
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
EOF

source ~/.bashrc
cd ~
mkvirtualenv --python=`which python3` uec
pip install ipython
