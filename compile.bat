REM Automatically generated from Makefile
mkdir -p obj
..\..\..\bin\lcc   -debug -c -o obj\common.o src\common.c
..\..\..\bin\lcc   -debug -c -o obj\main.o src\main.c
..\..\..\bin\lcc   -debug -c -o obj\cast_tiles.o res\cast_tiles.c
..\..\..\bin\lcc   -debug -c -o obj\indoor_tiles.o res\indoor_tiles.c
..\..\..\bin\lcc   -debug -c -o obj\home.o res\home.c
..\..\..\bin\lcc   -debug -c -o obj\player.o src\player.c
..\..\..\bin\lcc   -debug -c -o obj\GameTitle.o src\GameTitle.c
..\..\..\bin\lcc   -debug -c -o obj\CoreGameLoop.o src\CoreGameLoop.c
..\..\..\bin\lcc   -debug -c -o obj\GameJohnDoe.o src\GameJohnDoe.c
..\..\..\bin\lcc   -debug -c -o obj\Globe_Tiles.o res\Globe_Tiles.c
..\..\..\bin\lcc   -debug -c -o obj\Title_Map.o res\Title_Map.c
..\..\..\bin\lcc   -debug -c -o obj\Title_Tiles.o res\Title_Tiles.c
..\..\..\bin\lcc   -debug -c -o obj\JohnDoe_Map.o res\JohnDoe_Map.c
..\..\..\bin\lcc   -debug -c -o obj\JohnDoe_Tiles.o res\JohnDoe_Tiles.c
..\..\..\bin\lcc   -debug -o bin\Memory.gb obj\main.o obj\cast_tiles.o obj\indoor_tiles.o obj\home.o obj\player.o obj\GameTitle.o obj\GameTitle.o obj\Globe_Tiles.o obj\Title_Map.o obj\Title_Tiles.o obj\common.o obj\CoreGameLoop.o obj\JohnDoe_Map.o obj\JohnDoe_Tiles.o obj\GameJohnDoe.o
