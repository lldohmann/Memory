#include <gb/gb.h>
#include "../src/common.h"
#include "../res/Battle_Map.h"
#include "../res/Font.h"
#include "../res/Crow_Map.h"
#include "../res/Crow_Tiles.h"
#include "../res/Wally_Tiles.h"
#include "../res/Wally_Map.h"
#include "../res/Gypsy_Tiles.h"
#include "../res/Gypsy_Map.h"
#include "../res/Tick_Tiles.h"
#include "../res/Tick_Map.h"
#include "../res/Cop_Tiles.h"
#include "../res/Officer_Map.h"
#include "../res/Police_Map.h"
#include "../res/Sheriff_Map.h"
#include "../res/Chief_Map.h"
#include "../res/Man_Tiles.h"
#include "../res/Man_Map.h"
#include "../res/Car_Tiles.h"
#include "../res/Car_Map.h"
#include "../res/Semi_Tiles.h"
#include "../res/Semi_Map.h"
#include "../res/Sis_Tiles.h"
#include "../res/BigSis_Map.h"
#include "../res/MadSis_Map.h"
#include "../res/Drunk_Tiles.h"
#include "../res/Drunk_Map.h"
#include "../res/Experiment_Tiles.h"
#include "../res/Experiment_Map.h"
#include "../res/Ghost_Tiles.h"
#include "../res/Ghost_Map.h"
#include "../res/Saucer_Tiles.h"
#include "../res/Saucer_Map.h"
#include "../res/SockHead_Tiles.h"
#include "../res/SockHead_Map.h"
#include "../res/Toby_Tiles.h"
#include "../res/Toby_Map.h"

typedef struct Cursor
{
    uint8_t x;
    uint8_t y;
    uint8_t col;
    uint8_t row;
};

struct Cursor cursor;

void BattleSetup(void)
{
    move_bkg(0,0);
    set_bkg_data(0, 53, FontTiles); // Load font and window tiles
    set_bkg_tiles(0, 0, Battle_MapWidth, Battle_MapHeight, Battle_Map); // draw background window & text
    // PLAYER STATS MOCKUP
    DrawNumber(1, 14, 123456, 6, TRUE);
    DrawNumber(8, 14, 110, 3, TRUE);
    DrawNumber(13, 14, 70, 2, TRUE);
    DrawNumber(17, 14, 11, 2, TRUE);
    // ALLY STATS MOCKUP
    DrawNumber(1, 15, 123456, 6, TRUE);
    DrawNumber(9, 15, 80, 2, TRUE);
    DrawNumber(13, 15, 33, 2, TRUE);
    DrawNumber(17, 15, 11, 2, TRUE);

    // CURSOR SET UP
    cursor.x = 8;
    cursor.y = 144;
    set_sprite_tile(0, 255);
    move_sprite(0, cursor.x, cursor.y);
    

    SHOW_BKG; 
    fadeFromBlack(5);
    if (index == 0) // JIM
    {
        DrawText(1, 1, "Jim Crow draws", TRUE);
        DrawText(1, 3, "near.", TRUE);
        set_bkg_data(128, 23, Crow_Tiles); // init with crow monster
        set_bkg_tiles(7, 6, Crow_MapWidth, Crow_MapHeight, Crow_Map); // draw Crow monster
    }
    else if (index == 1) // GYPSY
    {
        DrawText(1, 1, "Gypsy Moth draws", TRUE);
        DrawText(1, 3, "near.", TRUE);
        set_bkg_data(128, 29, GypsyTiles); 
        set_bkg_tiles(7, 5, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
    }
    else if (index == 2) // WALLY
    {
        DrawText(1, 1, "Wally butts in.", TRUE);
        set_bkg_data(128, 27, WallyTiles); 
        set_bkg_tiles(7, 5, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
    }
    else if (index == 3) // TICK
    {
        DrawText(1, 1, "A tick draws near.", TRUE);
        set_bkg_data(128, 20, Tick_Tiles); 
        set_bkg_tiles(7, 5, Tick_MapWidth, Tick_MapHeight, Tick_Map); 
    }
    else if (index == 4) // OFFICER
    {
        DrawText(1, 1, "An Officer draws", TRUE);
        DrawText(1, 3, "near.", TRUE);
        set_bkg_data(128, 39, Cop_Tiles); 
        set_bkg_tiles(7, 5, Officer_MapWidth, Officer_MapHeight, Officer_Map); 
    }
    else if (index == 5) // POLICE
    {
        set_bkg_data(128, 39, Cop_Tiles); 
        set_bkg_tiles(7, 5, Police_MapWidth, Police_MapHeight, Police_Map); 
    }
    else if (index == 6) // SHERIFF
    {
        set_bkg_data(128, 39, Cop_Tiles); 
        set_bkg_tiles(7, 5, Sheriff_MapWidth, Sheriff_MapHeight, Sheriff_Map); 
    }
    else if (index == 7) // CHIEF
    {
        set_bkg_data(128, 39, Cop_Tiles); 
        set_bkg_tiles(7, 5, Chief_MapWidth, Chief_MapHeight, Chief_Map); 
    }
    else if (index == 8)
    {
        InvertColor();
        set_bkg_data(128, 30, Man_Tiles); 
        set_bkg_tiles(7, 5, Man_MapWidth, Man_MapHeight, Man_Map); 
    }
    else if (index == 9)
    {
        set_bkg_data(128, 26, Car_Tiles); 
        set_bkg_tiles(7, 5, Car_MapWidth, Car_MapHeight, Car_Map); 
    }
    else if (index == 10)
    {
        set_bkg_data(128, 46, Semi_Tiles); 
        set_bkg_tiles(7, 5, Semi_MapWidth, Semi_MapHeight, Semi_Map); 
    }
    else if (index == 11)
    {
        set_bkg_data(128, 31, Sis_Tiles); 
        set_bkg_tiles(7, 5, BigSis_MapWidth, BigSis_MapHeight, BigSis_Map); 
    }
    else if (index == 12)
    {
        set_bkg_data(128, 31, Sis_Tiles); 
        set_bkg_tiles(7, 5, MadSis_MapWidth, MadSis_MapHeight, MadSis_Map); 
    }
    else if (index == 13)
    {
        set_bkg_data(128, 29, Experiment_Tiles);
        set_bkg_tiles(7, 5, Experiment_MapWidth, Experiment_MapHeight, Experiment_Map );
    }
    else if (index == 14)
    {
        set_bkg_data(128, 19, Ghost_Tiles);
        set_bkg_tiles(7, 5, Ghost_MapWidth, Ghost_MapHeight, Ghost_Map);
    }
    else if (index == 15)
    {
        set_bkg_data(128, 14, Saucer_Tiles);
        set_bkg_tiles(7, 5, Saucer_MapWidth, Saucer_MapHeight, Ghost_Map);
    }
    else if (index == 16)
    {
        set_bkg_data(128, 20, SockHead_Tiles);
        set_bkg_tiles(7, 5, SockHead_MapWidth, SockHead_MapHeight, SockHead_Map);
    }
    else if (index == 17)
    {
        set_bkg_data(128, 26, Toby_Tiles);
        set_bkg_tiles(7, 5, Toby_MapWidth, Toby_MapHeight, Toby_Map);
    }
    else if (index == 18)
    {
        set_bkg_data(128, 24, Drunk_Tiles);
        set_bkg_tiles(7, 5, Drunk_MapWidth, Drunk_MapHeight, Drunk_Map);
    }
    performantdelay(120);
    scroll_bkg(0, 40);
    //set_sprite_prop()
}

uint8_t BattleUpdate(void)
{
    if (joypadCurrent & J_SELECT)
    {
        return GAMETITLE;
    }
    else if ((joypadCurrent & J_DOWN) && !(joypadCurrent & J_DOWN))
    {
        cursor.x += 0;
        cursor.y += 8;
        move_sprite(0, cursor.x, cursor.y);
        return BATTLE;
    }
    else {

        return BATTLE;
    }
}