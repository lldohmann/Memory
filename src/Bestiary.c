#include <gb/gb.h>
#include "../src/common.h"
#include "../res/Bestiary_Map.h"
#include "../res/Font.h"
#include "../res/Crow_Map.h"
#include "../res/Crow_Tiles.h"

void BestiarySetup()
{
    set_bkg_data(0, 53, FontTiles);
    set_bkg_data(128, 79, Crow_Tiles);
    set_bkg_tiles(0, 0, Bestiary_MapWidth, Bestiary_MapHeight, Bestiary_Map);
    set_bkg_tiles(2, 4, Crow_MapWidth, Crow_MapHeight, Crow_Map);
    SHOW_BKG;
    fadeFromBlack(10);
}

uint8_t BestiaryUpdate()
{
    joypadPrevious = joypadCurrent;
    joypadCurrent = joypad();

    if (joypadCurrent & J_LEFT)
    {
        //DrawNumber(7, 0, 0, 3);     // ID
        //DrawText(2, 2, "JIM");      // NAME
        //DrawNumber(14, 2, 3, 3);    // ATTACK
        //DrawNumber(14, 4, 2, 3);    // DEFENSE
        //DrawNumber(14, 6, 1, 3);    // SPECIAL
        //DrawNumber(14, 8, 4, 3);    // SPEED
        //DrawNumber(11, 10, 5, 1);   // EXP.
        //DrawText(1, 13, "HE LOVES TO PLAY DICE.");
        //DrawText(1, 15, "HE LAUGHS AT FATE.");
    }
    if (joypadCurrent & J_RIGHT)
    {
        //DrawNumber(7, 0, 1, 3);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        //DrawNumber(14, 2, 2, 3);    // ATTACK
        //DrawNumber(14, 4, 2, 3);    // DEFENSE
        //DrawNumber(14, 6, 3, 3);    // SPECIAL
        //DrawNumber(14, 8, 2, 3);    // SPEED
        //DrawNumber(11, 10, 7, 1);   // EXP.
        //DrawText(1, 13, "BETTER IN GROUPS.");
        //DrawText(1, 15, "BE MERRY AND DANCE.");
    }
    if (joypadCurrent & J_SELECT)
    {
        fadeToBlack(10);
        return GAMETITLE;
    }

    return BESTIARY;
}