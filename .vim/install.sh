wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Done! Copying stuff now..."
cp .vimrc ~/.vimrc
cp molokai.vim ~/.vim/colors/
echo "Clearning up..."
rm -rf molokai.vim
echo "Done! (Google Vundle, to see how you can install it.)"
