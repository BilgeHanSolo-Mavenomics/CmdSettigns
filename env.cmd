@echo off
title "BilgeHanSolo@MilleniumFalcon"

doskey np=notepad++.exe $*
doskey subl="C:\Program Files\Sublime Text 3\sublime_text.exe" $*

doskey gitbash=start "" "%SYSTEMDRIVE%\Program Files\Git\bin\sh.exe" --login

doskey desktop=cd %HOMEPATH%\Desktop
doskey repos=cd %HOMEPATH%\Desktop\Repos
doskey webserver=python -m SimpleHTTPServer 8000
doskey workspace=cd %HOMEPATH%\Desktop\Repos\MiscDemos\WebCompositing\WebCompositing

doskey cat=type $*
doskey clear=cls
doskey ls=dir /A /B $*