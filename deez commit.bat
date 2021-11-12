@echo off
title Commiting to github....
echo Adding files to commit..
call git add .
echo Commiting..
call git commit -m "whatever"
pause