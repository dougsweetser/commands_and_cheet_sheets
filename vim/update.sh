cd vim
hg pull
hg update
cd src
make distclean
./configure --enable-pythoninterp --enable-python3interp=dynamic --enable-perlinterp --with-features=huge --enable-rubyinterp --prefix=$HOME/opt/vim
make -v && make install
