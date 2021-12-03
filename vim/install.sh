hg clone https://vim.googlecode.com/hg/ vim
cd vim/src
./configure --enable-python3interp=dynamic  --enable-pythoninterp --enable-perlinterp  --with-features=huge --enable-rubyinterp --prefix=$HOME/opt/vim
make && make install
cd $HOME/bin
ln -s $HOME/opt/vim/bin/vim
which vim
vim --version
