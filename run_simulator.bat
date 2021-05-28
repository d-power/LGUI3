@echo off
set curr_dir=%~dp0
set PATH=%PATH%;%curr_dir%;%curr_dir%winlib
lua %curr_dir%main.lua