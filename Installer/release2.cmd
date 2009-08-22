cd arc.languages
call tr.cmd
cd ..

del !Release /s/q
mkdir !Release
mkdir !Release\Addons
mkdir !Release\Addons\InnoSetup
mkdir !Release\bin
mkdir !Release\bin\arc.languages
mkdir !Release\bin\ArcShellExt
mkdir !Release\Documentation
mkdir !Release\GTK2-Runtime
mkdir !Release\gtk2-themes
mkdir !Release\ini

xcopy Addons        !Release\Addons        /e
xcopy 7-zip         !Release\bin           /e
xcopy bin           !Release\bin           /e
xcopy ini           !Release\ini           /e
xcopy Documentation !Release\Documentation /e
xcopy GTK2-Runtime  !Release\GTK2-Runtime  /e
xcopy gtk2-themes   !Release\gtk2-themes   /e
xcopy arc.languages\arc.languages  !Release\bin\arc.languages        /e

xcopy ..\Documentation\History.txt                      !Release\Addons
xcopy ..\Unarc\FreeArc.fmt                             "!Release\Addons\FAR MultiArc plugin"
xcopy ..\Unarc\unarc.dll                                !Release\InnoSetup
xcopy ..\Unarc\InnoSetup\freearc_example.iss            !Release\InnoSetup
xcopy ..\Unarc\InnoSetup\FreeArc_Example-Ext.iss        !Release\InnoSetup
xcopy ..\Unarc\InnoSetup\readme.txt                     !Release\InnoSetup
xcopy ..\Documentation\FreeArc036-eng.htm               !Release\Documentation
xcopy ..\Documentation\FreeArc040-rus.htm               !Release\Documentation
xcopy ..\Documentation\FreeArc-GUI-Eng.htm              !Release\Documentation
xcopy ..\Documentation\FreeArc-GUI-Rus.htm              !Release\Documentation
xcopy ..\Tests\Arc.exe                                  !Release\bin
xcopy ..\Tests\FreeArc.exe                              !Release\bin
xcopy ..\Unarc\unarc.exe                                !Release\bin
xcopy ..\Unarc\*.sfx                                    !Release\bin
xcopy ..\Compression\facompress.dll                     !Release\bin
xcopy ..\ArcShellExt\all2arc\all2arc.exe                !Release\bin
xcopy ..\ArcShellExt\*.dll                              !Release\bin\ArcShellExt
xcopy ..\ArcShellExt\*.lua                              !Release\bin\ArcShellExt
xcopy release3.cmd                                      !Release
xcopy *.nsi                                             !Release
xcopy *.nsh                                             !Release
xcopy FreeArc.url                                       !Release

cd    !Release
