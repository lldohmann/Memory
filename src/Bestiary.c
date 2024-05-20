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
        if (index + 1 <= 3)
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
        DrawNumber(16, 10, 12, 1);   // EXP.
    }
    return BESTIARY;
}