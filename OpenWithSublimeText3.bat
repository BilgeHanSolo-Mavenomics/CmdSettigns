@echo off
SET st3Path=C:\Program Files\Sublime Text 3\sublime_text.exe

rem add it for all file types
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text\command" /t REG_SZ /v "" /d "%st3Path% \"%%1\"" /f
pause

rem add it for folders
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text\command" /t REG_SZ /v "" /d "%st3Path% \"%%1\"" /f
pause

rem add it for directories
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text\command" /t REG_SZ /v "" /d "%st3Path% \"%%1\"" /f
pause

rem add it for background directories
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text\command" /t REG_SZ /v "" /d "%st3Path% \"%%1\"" /f
pause

rem for all context menus
@reg add "HKEY_CLASSES_ROOT\AllFileSystemObjects\ShellEx\Open with Sublime Text"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
@reg add "HKEY_CLASSES_ROOT\AllFileSystemObjects\ShellEx\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\AllFileSystemObjects\ShellEx\Open with Sublime Text\command" /t REG_SZ /v "" /d "%st3Path% \"%%1\"" /f
pause

rem also for specific file types
@reg add "HKEY_CLASSES_ROOT\*\shellex\ContextMenuHandlers\Open with Sublime Text"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
@reg add "HKEY_CLASSES_ROOT\*\shellex\ContextMenuHandlers\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shellex\ContextMenuHandlers\Open with Sublime Text\command" /t REG_SZ /v "" /d "%st3Path% \"%%1\"" /f
pause

rem also for folders
@reg add "HKEY_CLASSES_ROOT\Directory\shellex\ContextMenuHandlers\Open with Sublime Text"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shellex\ContextMenuHandlers\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shellex\ContextMenuHandlers\Open with Sublime Text\command" /t REG_SZ /v "" /d "%st3Path% \"%%1\"" /f
pause
