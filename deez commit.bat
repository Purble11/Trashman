@echo off
title Commiting to github....
echo Adding files to commit..
call git add .
echo Commiting..
call git commit -m "whatever"
echo Fixing...
call git pull origin main --allow-unrelated-histories
echo Pushing the commit
call git push origin main
pause