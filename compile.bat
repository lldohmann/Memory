REM Automatically generated from Makefile
mkdir -p obj
..\..\..\bin\lcc   -c -o obj\common.o res\common.c
..\..\..\bin\lcc   -c -o obj\main.o src\main.c
..\..\..\bin\lcc   -c -o obj\cast_tiles.o res\cast_tiles.c
..\..\..\bin\lcc   -c -o obj\indoor_tiles.o res\indoor_tiles.c
..\..\..\bin\lcc   -c -o obj\home.o res\home.c
..\..\..\bin\lcc   -c -o obj\player.o src\player.c
..\..\..\bin\lcc   -c -o obj\GameTitle.o res\GameTitle.c
..\..\..\bin\lcc   -c -o obj\CoreGameLoop.o res\CoreGameLoop.c
..\..\..\bin\lcc   -c -o obj\Globe_Tiles.o res\Globe_Tiles.c
..\..\..\bin\lcc   -c -o obj\Title_Map.o res\Title_Map.c
..\..\..\bin\lcc   -c -o obj\Title_Tiles.o res\Title_Tiles.c
..\..\..\bin\lcc   -o obj\Memory.gb obj\main.o obj\cast_tiles.o obj\indoor_tiles.o obj\home.o obj\player.o obj\GameTitle.o obj\GameTitle.o obj\Globe_Tiles.o obj\Title_Map.o obj\Title_Tiles.o obj\common.o obj\CoreGameLoop.o
