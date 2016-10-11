@echo off

if exist node_modules\.bin\jake.cmd goto :run_jake  

echo Building npm modules:
call npm rebuild

:run_jake
call node_modules\.bin\jake %*
