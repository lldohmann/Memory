REM Automatically generated from Makefile
mkdir -p obj
..\..\..\bin\lcc   -c -o obj\main.o src\main.c
..\..\..\bin\lcc   -c -o obj\cast_tiles.o res\cast_tiles.c
..\..\..\bin\lcc   -c -o obj\indoor_tiles.o res\indoor_tiles.c
..\..\..\bin\lcc   -c -o obj\home.o res\home.c
..\..\..\bin\lcc   -c -o obj\player.o src\player.c
..\..\..\bin\lcc   -o obj\Memory.gb obj\main.o obj\cast_tiles.o obj\indoor_tiles.o obj\home.o obj\player.o
