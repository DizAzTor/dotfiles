"""This script pretty much installs whatever you need for the .vimrc, if you're lazy."""

import os
import time

def install():
    if os.name == "nt":
        os.system("echo \">Windows\"")
        time.sleep(0.4)
        os.system("echo \"lol\"")
    else:
        os.system("wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim")
        os.system("git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim")
        os.system("echo \"Done! Copying stuff now...\"")
        os.system("cp .vimrc ~/.vimrc")
        os.system("cp molokai.vim ~/.vim/colors/")
        os.system("echo \"Cleaning up...\"")
        os.system("rm -rf molokai.vim")
        os.system("echo \"Done! Google Vundle, to see how you can install it.\"")
install()
