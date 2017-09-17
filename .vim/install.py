"""This script pretty much installs whatever you need for the .vimrc, if you're lazy."""

import os
import time

def install():
    if os.name == "nt":
        os.system("echo \">Windows\"")
        time.sleep(0.4)
        os.system("echo \"lol\"")
    else:
        os.system("wget https://raw.githubusercontent.com/sheerun/vimrc/master/colors/wombat256mod.vim")
        os.system("git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim")
        os.system("echo \"Done! Copying stuff now...\"")
        os.system("cp .vimrc ~/.vimrc")
        os.system("cp wombat256mod.vim ~/.vim/colors/")
        os.system("echo \"Cleaning up...\"")
        os.system("rm -rf wombat256mod.vim")
        os.system("echo \"Done!\"")

install()
