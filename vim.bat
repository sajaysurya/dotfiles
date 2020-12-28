@echo off
set my_app=vim
set pp=%1
set pp=%pp:'='\''%
set pp=%pp:;=\;%
set launch="p=$(wslpath '%pp:"=%') && cd \\"^""$(dirname \\"^""$p\\"^"")\\"^"" && zsh -s eval %my_app% \'\\"^""$p\\"^""\'
start wt.exe bash -c %launch%