/*
 * =====================================================================================
 *
 *       Filename:  install.c
 *
 *    Description:  Port of install.py in C.
 *
 *        Version:  1.0
 *        Created:  10/01/2017 12:17:47 AM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (Mario),
 *   Organization:  authoopy
 *
 * =====================================================================================
 */
#include <stdlib.h>
#include <stdio.h>
#ifdef _WIN32
    #include <Windows.h>
#else
    #include <unistd.h>
#endif

int main() {
    int delay;
    delay = 1;

    #ifdef _WIN32
        printf(">Windows\n");
        Sleep(delay);
        printf("lol\n");
    #else
        /*  Run system commands. */
        system("wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim");
        system("git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim");
        system("echo Done! Copying stuff now");
        system("cp .vimrc ~/.vimrc");
        system("echo Clearning up...");
        system("rm -rf molokai.vim");
        system("echo Done! Google Vundle, to see how you can install it.");
    #endif
}
