#pragma bank 5

#include <gb/gb.h>
#include "../src/common.h"
#include "../res/misc/Battle_Map.h"
#include "../res/misc/Font.h"
#include "../res/enemies/Crow_Map.h"
#include "../res/enemies/Crow_Tiles.h"
#include "../res/enemies/Wally_Tiles.h"
#include "../res/enemies/Wally_Map.h"
#include "../res/enemies/Gypsy_Tiles.h"
#include "../res/enemies/Gypsy_Map.h"
#include "../res/enemies/Tick_Tiles.h"
#include "../res/enemies/Tick_Map.h"
#include "../res/enemies/Cop_Tiles.h"
#include "../res/enemies/Officer_Map.h"
#include "../res/enemies/Police_Map.h"
#include "../res/enemies/Sheriff_Map.h"
#include "../res/enemies/Chief_Map.h"
#include "../res/enemies/Man_Tiles.h"
#include "../res/enemies/Man_Map.h"
#include "../res/enemies/Car_Tiles.h"
#include "../res/enemies/Car_Map.h"
#include "../res/enemies/Semi_Tiles.h"
#include "../res/enemies/Semi_Map.h"
#include "../res/enemies/Sis_Tiles.h"
#include "../res/enemies/BigSis_Map.h"
#include "../res/enemies/MadSis_Map.h"
#include "../res/enemies/Drunk_Tiles.h"
#include "../res/enemies/Drunk_Map.h"
#include "../res/enemies/Experiment_Tiles.h"
#include "../res/enemies/Experiment_Map.h"
#include "../res/enemies/Ghost_Tiles.h"
#include "../res/enemies/Ghost_Map.h"
#include "../res/enemies/Saucer_Tiles.h"
#include "../res/enemies/Saucer_Map.h"
#include "../res/enemies/SockHead_Tiles.h"
#include "../res/enemies/SockHead_Map.h"
#include "../res/enemies/Toby_Tiles.h"
#include "../res/enemies/Toby_Map.h"

BANKREF(const_bank_ID_battle)
const uint8_t const_bank_ID_battle = 5;

typedef struct Cursor
{
    uint8_t x;
    uint8_t y;
    uint8_t col;
    uint8_t row;
};

struct Cursor cursor;

BANKREF(BattleSetup)
void BattleSetup(void) BANKED
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

BANKREF(BattleUpdate)
uint8_t BattleUpdate(void) BANKED
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