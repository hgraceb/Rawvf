@echo off & setlocal enabledelayedexpansion

for %%a in (*.mvf) do (
   set str=%%a
   set var=!str:~0,-4!
   mvf2rawvf "%%a" > !var!.rawvf
) 
for %%a in (*.avf) do (
   set str=%%a
   set var=!str:~0,-4!
   avf2rawvf "%%a" echo > !var!.rawvf
) 
exit
