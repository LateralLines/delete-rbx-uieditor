@echo off
:loop
del /s "%localappdata%\Roblox\Versions\UIEditor*"
timeout /t 15
goto loop