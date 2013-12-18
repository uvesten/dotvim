These are my Vim settings.


To install, do

    cd
    git clone https://github.com/uvesten/dotvim .vim
    cd .vim
    git submodule init
    git submodule update
    cd bundle/vim-jsbeautify && git submodule update --init --recursive
    cd ..
    ln -s .vim/.vimrc
