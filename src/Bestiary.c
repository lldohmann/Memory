#include <gb/gb.h>
#include "../src/common.h"
#include "../res/Bestiary_Map.h"
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
// SET UP ENEMIES
//struct Enemy enemy_JIM = {"JIM", 0, 3, 2, 1, 4, 5};
//struct Enemy enemy_GYPSY = {"GYPSY", 1, 2, 2, 3, 2, 7};
//struct Enemy enemy_WALLY = {"WALLY", 2, 4, 4, 4, 4, 12};

//const struct  Enemy* const bestiary[3] = {enemy_JIM, enemy_GYPSY, enemy_WALLY};
int8_t index = 0;
uint8_t invert = 0;

void BestiarySetup()
{
    set_bkg_data(0, 53, FontTiles); // Load font and window tiles
    set_bkg_tiles(0, 0, Bestiary_MapWidth, Bestiary_MapHeight, Bestiary_Map); // draw background window & text
    SHOW_BKG; 
    fadeFromBlack(10);
}

uint8_t BestiaryUpdate()
{
    joypadPrevious = joypadCurrent;
    joypadCurrent = joypad();

    if (joypadCurrent & J_LEFT)
    {
        if (index - 1 >= 0)
        {
            index--;
        }
    }
    if (joypadCurrent & J_RIGHT)
    {
        if (index + 1 <= 12)
        {
            index++;
        }
    }
    if (joypadCurrent & J_START)
    {
        InvertColor();
        /**
        if (invert == 0)
        {
            invert = 1;
            InvertColor();
        }
        if (invert == 1)
        {
            invert = 0;
            ResetColor();
        }
        */
    }
    if (joypadCurrent & J_SELECT)
    {
        fadeToBlack(10);
        return GAMETITLE;
    }
    if (index == 0) // JIM
    {
        set_bkg_data(128, 79, Crow_Tiles); // init with crow monster
        set_bkg_tiles(2, 4, Crow_MapWidth, Crow_MapHeight, Crow_Map); // draw Crow monster
        DrawNumber(4, 0, 0, 3);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(17, 2, 3, 1);    // ATTACK
        DrawNumber(17, 4, 2, 1);    // DEFENSE
        DrawNumber(17, 6, 1, 1);    // SPECIAL
        DrawNumber(17, 8, 4, 1);    // SPEED
        DrawNumber(17, 10, 5, 1);   // EXP.
    }
    else if (index == 1) // Gypsy
    {
        set_bkg_data(128, 79, GypsyTiles); 
        set_bkg_tiles(2, 4, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
        DrawNumber(4, 0, 1, 3);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(17, 2, 2, 1);    // ATTACK
        DrawNumber(17, 4, 2, 1);    // DEFENSE
        DrawNumber(17, 6, 3, 1);    // SPECIAL
        DrawNumber(17, 8, 2, 1);    // SPEED
        DrawNumber(17, 10, 7, 1);   // EXP.
    }
    else if (index == 2) // Wally
    {
        set_bkg_data(128, 79, WallyTiles); 
        set_bkg_tiles(2, 4, Wally_MapWidth, Wally_MapHeight, Wally_Map); 
        DrawNumber(4, 0, 2, 3);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(17, 2, 4, 1);    // ATTACK
        DrawNumber(17, 4, 4, 1);    // DEFENSE
        DrawNumber(17, 6, 4, 1);    // SPECIAL
        DrawNumber(17, 8, 4, 1);    // SPEED
        DrawNumber(16, 10, 12, 2);   // EXP.
    }
    else if (index == 3)
    {
        set_bkg_data(128, 20, Tick_Tiles);
        set_bkg_tiles(2, 4, Tick_MapWidth, Tick_MapHeight, Tick_Map);
        DrawNumber(4, 0, 3, 3);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(17, 2, 4, 1);    // ATTACK
        DrawNumber(17, 4, 7, 1);    // DEFENSE
        DrawNumber(17, 6, 3, 1);    // SPECIAL
        DrawNumber(17, 8, 2, 1);    // SPEED
        DrawNumber(16, 10, 16, 2);   // EXP.
    }
    else if (index == 4)
    {
        set_bkg_data(128, 39, Cop_Tiles);
        set_bkg_tiles(2, 4, Officer_MapWidth, Officer_MapHeight, Officer_Map);
        DrawNumber(4, 0, 4, 3);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(17, 2, 9, 1);    // ATTACK
        DrawNumber(17, 4, 5, 1);    // DEFENSE
        DrawNumber(17, 6, 2, 1);    // SPECIAL
        DrawNumber(17, 8, 4, 1);    // SPEED
        DrawNumber(16, 10, 12, 2);   // EXP.
    }
    else if (index == 5)
    {
        set_bkg_data(128, 39, Cop_Tiles);
        set_bkg_tiles(2, 4, Police_MapWidth, Police_MapHeight, Police_Map);
        DrawNumber(4, 0, 5, 3);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(16, 2, 10, 2);    // ATTACK
        DrawNumber(16, 4, 15, 2);    // DEFENSE
        DrawNumber(17, 6, 5, 1);    // SPECIAL
        DrawNumber(17, 8, 6, 1);    // SPEED
        DrawNumber(16, 10, 22, 2);   // EXP.
    }
    else if (index == 6)
    {
        set_bkg_data(128, 39, Cop_Tiles);
        set_bkg_tiles(2, 4, Sheriff_MapWidth, Sheriff_MapHeight, Sheriff_Map);
        DrawNumber(4, 0, 6, 3);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(16, 2, 16, 2);    // ATTACK
        DrawNumber(16, 4, 10, 2);    // DEFENSE
        DrawNumber(17, 6, 6, 1);    // SPECIAL
        DrawNumber(17, 8, 8, 1);    // SPEED
        DrawNumber(16, 10, 22, 2);   // EXP.
    }
    else if (index == 7)
    {
        set_bkg_data(128, 39, Cop_Tiles);
        set_bkg_tiles(2, 4, Chief_MapWidth, Chief_MapHeight, Chief_Map);
        DrawNumber(4, 0, 7, 3);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(16, 2, 30, 2);    // ATTACK
        DrawNumber(16, 4, 20, 2);    // DEFENSE
        DrawNumber(17, 6, 10, 1);    // SPECIAL
        DrawNumber(17, 8, 10, 1);    // SPEED
        DrawNumber(16, 10, 55, 2);   // EXP.
    }
    else if (index == 8)
    {
        set_bkg_data(128, 30, Man_Tiles);
        set_bkg_tiles(2, 4, Man_MapWidth, Man_MapHeight, Man_Map);
        DrawNumber(4, 0, 8, 3);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(17, 2, 0, 1);    // ATTACK
        DrawNumber(15, 4, 255, 3);    // DEFENSE
        DrawNumber(17, 6, 1, 1);    // SPECIAL
        DrawNumber(17, 8, 1, 1);    // SPEED
        DrawNumber(16, 10, 1, 1);   // EXP.
    }
    else if (index == 9)
    {
        set_bkg_data(128, 26, Car_Tiles);
        set_bkg_tiles(2, 4, Car_MapWidth, Car_MapHeight, Car_Map);
        DrawNumber(4, 0, 9, 3);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(16, 2, 30, 2);    // ATTACK
        DrawNumber(16, 4, 25, 3);    // DEFENSE
        DrawNumber(16, 6, 15, 2);    // SPECIAL
        DrawNumber(16, 8, 40, 2);    // SPEED
        DrawNumber(16, 10, 66, 2);   // EXP.
    }
    else if (index == 10)
    {
        set_bkg_data(128, 46, Semi_Tiles);
        set_bkg_tiles(2, 4, Semi_MapWidth, Semi_MapHeight, Semi_Map);
        DrawNumber(4, 0, 10, 3);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(16, 2, 66, 2);    // ATTACK
        DrawNumber(16, 4, 66, 2);    // DEFENSE
        DrawNumber(16, 6, 15, 2);    // SPECIAL
        DrawNumber(16, 8, 35, 2);    // SPEED
        DrawNumber(15, 10, 100, 3);   // EXP.
    }
    else if (index == 11)
    {
        set_bkg_data(128, 31, Sis_Tiles);
        set_bkg_tiles(2, 4, BigSis_MapWidth, BigSis_MapHeight, BigSis_Map);
        DrawNumber(4, 0, 11, 3);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(16, 2, 26, 2);    // ATTACK
        DrawNumber(16, 4, 14, 2);    // DEFENSE
        DrawNumber(16, 6, 20, 2);    // SPECIAL
        DrawNumber(16, 8, 20, 2);    // SPEED
        DrawNumber(16, 10, 38, 2);   // EXP.
    }
    else if (index == 12)
    {
        set_bkg_data(128, 31, Sis_Tiles);
        set_bkg_tiles(2, 4, MadSis_MapWidth, MadSis_MapHeight, MadSis_Map);
        DrawNumber(4, 0, 12, 3);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(16, 2, 36, 2);    // ATTACK
        DrawNumber(16, 4, 24, 2);    // DEFENSE
        DrawNumber(16, 6, 30, 2);    // SPECIAL
        DrawNumber(16, 8, 30, 2);    // SPEED
        DrawNumber(16, 10, 58, 2);   // EXP.
    }
    return BESTIARY;
}