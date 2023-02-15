# Generate C-style hex dumps of the ROM images, so they can be compiled into
# the executable. roms.c #includes these auto-generated files.
gcc -o bintoinc.exe -Wall -g --std=c99 bintoinc.c
if %ERRORLEVEL% neq 0 pause & exit

bintoinc.exe ../roms/EDITORA100 > zz-editor-a.c
if %ERRORLEVEL% neq 0 pause & exit

bintoinc.exe ../roms/EDITORB100 > zz-editor-b.c
if %ERRORLEVEL% neq 0 pause & exit

bintoinc.exe ../roms/Basic2 > zz-basic-2.c
if %ERRORLEVEL% neq 0 pause & exit

bintoinc.exe ../roms/Basic432 > zz-basic-4.c
if %ERRORLEVEL% neq 0 pause & exit

gcc -o ../basictool.exe -g -O2 -Wall -Werror --std=c99 main.c config.c emulation.c driver.c roms.c utils.c lib6502.c cargs.c
if %ERRORLEVEL% neq 0 pause & exit

