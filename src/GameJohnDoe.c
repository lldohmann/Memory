#include <gb/gb.h>
#include "../src/GameJohnDoe.h"
#include "../src/common.h"
#include "../res/JohnDoe_Tiles.h"
#include "../res/JohnDoe_Map.h"

void GameJohnDoeSetup()
{
    set_bkg_data(0, 79, JohnDoe_Tiles);
    set_bkg_tiles(0, 0, JohnDoe_MapWidth, JohnDoe_MapHeight, JohnDoe_Map);
    SHOW_BKG;
    fadeFromBlack(10);
}

uint8_t GameJohnDoeUpdate()
{
    joypadPrevious = joypadCurrent;
    joypadCurrent = joypad();

    if (joypadCurrent & J_A)
    {
        fadeToBlack(10);
        fadeFromBlack(10);
    }
    if (joypadCurrent & J_B)
    {
        fadeToWhite(10);
        fadeFromWhite(10);
    }

    return GAMEJOHNDOE;
}