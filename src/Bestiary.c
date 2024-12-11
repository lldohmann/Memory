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

// SET UP ENEMIES
//struct Enemy enemy_JIM = {"JIM", 0, 3, 2, 1, 4, 5};
//struct Enemy enemy_GYPSY = {"GYPSY", 1, 2, 2, 3, 2, 7};
//struct Enemy enemy_WALLY = {"WALLY", 2, 4, 4, 4, 4, 12};

//const struct  Enemy* const bestiary[3] = {enemy_JIM, enemy_GYPSY, enemy_WALLY};
uint8_t invert = 0;

void BestiarySetup(void)
{
    move_bkg(0,0);
    set_bkg_data(0, 53, FontTiles); // Load font and window tiles
    set_bkg_tiles(0, 0, Bestiary_MapWidth, Bestiary_MapHeight, Bestiary_Map); // draw background window & text
    SHOW_BKG; 
    fadeFromBlack(10);
}

uint8_t BestiaryUpdate(void)
{
    joypadPrevious = joypadCurrent;
    joypadCurrent = joypad();

    if ((joypadCurrent & J_LEFT) && !(joypadPrevious & J_LEFT))
    {
        if (index - 1 >= 0)
        {
            index--;
            set_bkg_tiles(0, 0, Bestiary_MapWidth, Bestiary_MapHeight, Bestiary_Map);
        }
    }
    if ((joypadCurrent & J_RIGHT) && !(joypadPrevious & J_RIGHT))
    {
        if (index + 1 <= 18)
        {
            index++;
            set_bkg_tiles(0, 0, Bestiary_MapWidth, Bestiary_MapHeight, Bestiary_Map);
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
    if (joypadCurrent & J_A)
    {
        fadeToBlack(3);
        fadeFromBlack(3);
        fadeToBlack(3);
        fadeFromBlack(3);
        fadeToBlack(3);
        return BATTLE;
    }
    if (index == 0) // JIM
    {
        set_bkg_data(128, 79, Crow_Tiles); // init with crow monster
        set_bkg_tiles(2, 4, Crow_MapWidth, Crow_MapHeight, Crow_Map); // draw Crow monster
        DrawNumber(4, 0, 0, 3, TRUE);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(17, 2, 3, 1, TRUE);    // ATTACK
        DrawNumber(17, 4, 2, 1, TRUE);    // DEFENSE
        DrawNumber(17, 6, 1, 1, TRUE);    // SPECIAL
        DrawNumber(17, 8, 4, 1, TRUE);    // SPEED
        DrawNumber(17, 10, 5, 1, TRUE);   // EXP.
        DrawText(1, 13, "JIM IS A ", TRUE);
        DrawText(1, 14, "GAMBLER. HE LIKES", TRUE);
        DrawText(1, 15, "SHOOTING DICE.", TRUE);
    }
    else if (index == 1) // Gypsy
    {
        set_bkg_data(128, 79, GypsyTiles); 
        set_bkg_tiles(2, 4, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
        DrawNumber(4, 0, 1, 3, TRUE);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(17, 2, 2, 1, TRUE);    // ATTACK
        DrawNumber(17, 4, 2, 1, TRUE);    // DEFENSE
        DrawNumber(17, 6, 3, 1, TRUE);    // SPECIAL
        DrawNumber(17, 8, 2, 1, TRUE);    // SPEED
        DrawNumber(17, 10, 7, 1, TRUE);   // EXP.
        DrawText(1, 13, "GYPSY MOTHS ARE", TRUE);
        DrawText(1, 14, "TAKING ALL FROM", TRUE);
        DrawText(1, 15, "EVERYWHERE!", TRUE);
    }
    else if (index == 2) // Wally
    {
        set_bkg_data(128, 79, WallyTiles); 
        set_bkg_tiles(2, 4, Wally_MapWidth, Wally_MapHeight, Wally_Map); 
        DrawNumber(4, 0, 2, 3, TRUE);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(17, 2, 4, 1, TRUE);    // ATTACK
        DrawNumber(17, 4, 4, 1, TRUE);    // DEFENSE
        DrawNumber(17, 6, 4, 1, TRUE);    // SPECIAL
        DrawNumber(17, 8, 4, 1, TRUE);    // SPEED
        DrawNumber(16, 10, 12, 2, TRUE);   // EXP.
        DrawText(1, 13, "WALLY IS IN A", TRUE);
        DrawText(1, 14, "GANG. HE SAYS", TRUE);
        DrawText(1, 15, "NO TO DRUGS!", TRUE);
        DrawText(1, 16, "HOW COOL!", TRUE);
    }
    else if (index == 3)
    {
        set_bkg_data(128, 20, Tick_Tiles);
        set_bkg_tiles(2, 4, Tick_MapWidth, Tick_MapHeight, Tick_Map);
        DrawNumber(4, 0, 3, 3, TRUE);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(17, 2, 4, 1, TRUE);    // ATTACK
        DrawNumber(17, 4, 7, 1, TRUE);    // DEFENSE
        DrawNumber(17, 6, 3, 1, TRUE);    // SPECIAL
        DrawNumber(17, 8, 2, 1, TRUE);    // SPEED
        DrawNumber(16, 10, 16, 2, TRUE);   // EXP.
        DrawText(1, 13, "BLOOD SUCKING", TRUE);
        DrawText(1, 14, "PARASITE!", TRUE);
        DrawText(1, 15, "THEY HIDE IN", TRUE);
        DrawText(1, 16, "TALL GRASS!", TRUE);
    }
    else if (index == 4)
    {
        set_bkg_data(128, 39, Cop_Tiles);
        set_bkg_tiles(2, 4, Officer_MapWidth, Officer_MapHeight, Officer_Map);
        DrawNumber(4, 0, 4, 3, TRUE);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(17, 2, 9, 1, TRUE);    // ATTACK
        DrawNumber(17, 4, 5, 1, TRUE);    // DEFENSE
        DrawNumber(17, 6, 2, 1, TRUE);    // SPECIAL
        DrawNumber(17, 8, 4, 1, TRUE);    // SPEED
        DrawNumber(16, 10, 12, 2, TRUE);   // EXP.
        DrawText(1, 13, "OH NO! THE COPS!", TRUE);
        DrawText(1, 14, "SOMEONE HAS BEEN", TRUE);
        DrawText(1, 15, "BEING NAUGHTY!", TRUE);
        DrawText(1, 16, "CAN'T BE YOU?", TRUE);
    }
    else if (index == 5)
    {
        set_bkg_data(128, 39, Cop_Tiles);
        set_bkg_tiles(2, 4, Police_MapWidth, Police_MapHeight, Police_Map);
        DrawNumber(4, 0, 5, 3, TRUE);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(16, 2, 10, 2, TRUE);    // ATTACK
        DrawNumber(16, 4, 15, 2, TRUE);    // DEFENSE
        DrawNumber(17, 6, 5, 1, TRUE);    // SPECIAL
        DrawNumber(17, 8, 6, 1, TRUE);    // SPEED
        DrawNumber(16, 10, 22, 2, TRUE);   // EXP.
        DrawText(1, 13, "LOOKS LIKE THE ", TRUE);
        DrawText(1, 14, "POLICE HAS COME", TRUE);
        DrawText(1, 15, "TO TAKE YOU AWAY!", TRUE);
        DrawText(1, 16, "STOP RESISTING!", TRUE);
    }
    else if (index == 6)
    {
        set_bkg_data(128, 39, Cop_Tiles);
        set_bkg_tiles(2, 4, Sheriff_MapWidth, Sheriff_MapHeight, Sheriff_Map);
        DrawNumber(4, 0, 6, 3, TRUE);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(16, 2, 16, 2, TRUE);    // ATTACK
        DrawNumber(16, 4, 10, 2, TRUE);    // DEFENSE
        DrawNumber(17, 6, 6, 1, TRUE);    // SPECIAL
        DrawNumber(17, 8, 8, 1, TRUE);    // SPEED
        DrawNumber(16, 10, 22, 2, TRUE);   // EXP.
        DrawText(1, 13, "THE SHERIFF IS", TRUE);
        DrawText(1, 14, "CALLED IN DUE", TRUE);
        DrawText(1, 15, "POLICE NEGLIGENCE", TRUE);
    }
    else if (index == 7)
    {
        set_bkg_data(128, 39, Cop_Tiles);
        set_bkg_tiles(2, 4, Chief_MapWidth, Chief_MapHeight, Chief_Map);
        DrawNumber(4, 0, 7, 3, TRUE);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(16, 2, 30, 2, TRUE);    // ATTACK
        DrawNumber(16, 4, 20, 2, TRUE);    // DEFENSE
        DrawNumber(17, 6, 10, 1, TRUE);    // SPECIAL
        DrawNumber(17, 8, 10, 1, TRUE);    // SPEED
        DrawNumber(16, 10, 55, 2, TRUE);   // EXP.
        DrawText(1, 13, "CHIEF! CHIEF!", TRUE);
        DrawText(1, 14, "YOU GOT TO HELP!", TRUE);
        DrawText(1, 15, "WHY MUST I DO", TRUE);
        DrawText(1, 16, "EVERYTHING HERE?", TRUE);
    }
    else if (index == 8)
    {
        set_bkg_data(128, 30, Man_Tiles);
        set_bkg_tiles(2, 4, Man_MapWidth, Man_MapHeight, Man_Map);
        DrawNumber(4, 0, 8, 3, TRUE);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(17, 2, 0, 1, TRUE);    // ATTACK
        DrawNumber(15, 4, 255, 3, TRUE);    // DEFENSE
        DrawNumber(17, 6, 1, 1, TRUE);    // SPECIAL
        DrawNumber(17, 8, 1, 1, TRUE);    // SPEED
        DrawNumber(16, 10, 1, 1, TRUE);   // EXP.
        DrawText(1, 13, "HE'S BUILT", TRUE);
        DrawText(1, 14, "LIKE A BRICK", TRUE);
        DrawText(1, 15, "HOUSE!", TRUE);
    }
    else if (index == 9)
    {
        set_bkg_data(128, 26, Car_Tiles);
        set_bkg_tiles(2, 4, Car_MapWidth, Car_MapHeight, Car_Map);
        DrawNumber(4, 0, 9, 3, TRUE);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(16, 2, 30, 2, TRUE);    // ATTACK
        DrawNumber(16, 4, 25, 3, TRUE);    // DEFENSE
        DrawNumber(16, 6, 15, 2, TRUE);    // SPECIAL
        DrawNumber(16, 8, 40, 2, TRUE);    // SPEED
        DrawNumber(16, 10, 66, 2, TRUE);   // EXP.
    }
    else if (index == 10)
    {
        set_bkg_data(128, 46, Semi_Tiles);
        set_bkg_tiles(2, 4, Semi_MapWidth, Semi_MapHeight, Semi_Map);
        DrawNumber(4, 0, 10, 3, TRUE);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(16, 2, 66, 2, TRUE);    // ATTACK
        DrawNumber(16, 4, 66, 2, TRUE);    // DEFENSE
        DrawNumber(16, 6, 15, 2, TRUE);    // SPECIAL
        DrawNumber(16, 8, 35, 2, TRUE);    // SPEED
        DrawNumber(15, 10, 100, 3, TRUE);   // EXP.
    }
    else if (index == 11)
    {
        set_bkg_data(128, 31, Sis_Tiles);
        set_bkg_tiles(2, 4, BigSis_MapWidth, BigSis_MapHeight, BigSis_Map);
        DrawNumber(4, 0, 11, 3, TRUE);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(16, 2, 26, 2, TRUE);    // ATTACK
        DrawNumber(16, 4, 14, 2, TRUE);    // DEFENSE
        DrawNumber(16, 6, 20, 2, TRUE);    // SPECIAL
        DrawNumber(16, 8, 20, 2, TRUE);    // SPEED
        DrawNumber(16, 10, 38, 2, TRUE);   // EXP.
        DrawText(1, 13, "AROUND HERE,", TRUE);
        DrawText(1, 14, "SHE'S KNOWN ", TRUE);
        DrawText(1, 15, "AS BIG SIS!", TRUE);
    }
    else if (index == 12)
    {
        set_bkg_data(128, 31, Sis_Tiles);
        set_bkg_tiles(2, 4, MadSis_MapWidth, MadSis_MapHeight, MadSis_Map);
        DrawNumber(4, 0, 12, 3, TRUE);     // ID
        //DrawText(2, 2, "GYPSY");    // NAME
        DrawNumber(16, 2, 36, 2, TRUE);    // ATTACK
        DrawNumber(16, 4, 24, 2, TRUE);    // DEFENSE
        DrawNumber(16, 6, 30, 2, TRUE);    // SPECIAL
        DrawNumber(16, 8, 30, 2, TRUE);    // SPEED
        DrawNumber(16, 10, 58, 2, TRUE);   // EXP.
        DrawText(1, 13, "SHE REMEMBERS", TRUE);
        DrawText(1, 14, "YOUR LAST ", TRUE);
        DrawText(1, 15, "FIGHT.    ", TRUE);
    }
    else if (index == 13)
    {
        set_bkg_data(128, 29, Experiment_Tiles);
        set_bkg_tiles(2, 4, Experiment_MapWidth, Experiment_MapHeight, Experiment_Map );
        DrawNumber(4, 0, 13, 3, TRUE);
        DrawText(1, 13, "ONE OF YAKUB'S", TRUE);
        DrawText(1, 14, "EXPERIMENTS!", TRUE);
        DrawText(1, 15, "MAKES YOU ", TRUE);
        DrawText(1, 16, "THINK, HUH? ", TRUE);
    }
    else if (index == 14)
    {
        set_bkg_data(128, 19, Ghost_Tiles);
        set_bkg_tiles(2, 4, Ghost_MapWidth, Ghost_MapHeight, Ghost_Map);
        DrawNumber(4, 0, 14, 3, TRUE);
        DrawText(1, 13, "AHH! A GHOST!", TRUE);
        DrawText(1, 14, "WHO IS UNDER", TRUE);
        DrawText(1, 15, "THAT SHEET? ", TRUE);
    }
    else if (index == 15)
    {
        set_bkg_data(128, 14, Saucer_Tiles);
        set_bkg_tiles(2, 4, Saucer_MapWidth, Saucer_MapHeight, Ghost_Map);
        DrawNumber(4, 0, 15, 3, TRUE);
        DrawText(1, 13, "LOOK! A UFO!", TRUE);
        DrawText(1, 14, "A FLYING", TRUE);
        DrawText(1, 15, "SAUCER?!", TRUE);
    }
    else if (index == 16)
    {
        set_bkg_data(128, 20, SockHead_Tiles);
        set_bkg_tiles(2, 4, SockHead_MapWidth, SockHead_MapHeight, SockHead_Map);
        DrawNumber(4, 0, 16, 3, TRUE);
        DrawText(1, 13, "SOCK HEADS", TRUE);
        DrawText(1, 14, "DON'T THINK", TRUE);
        DrawText(1, 15, "ABOUT THE", TRUE);
        DrawText(1, 16, "FUTURE.", TRUE);
    }
    else if (index == 17)
    {
        set_bkg_data(128, 26, Toby_Tiles);
        set_bkg_tiles(2, 4, Toby_MapWidth, Toby_MapHeight, Toby_Map);
        DrawNumber(4, 0, 17, 3, TRUE);
        DrawText(1, 13, "FOX LOVES TO SAY", TRUE);
        DrawText(1, 14, "FLOAT LIKE A ", TRUE);
        DrawText(1, 15, "BUTTERFLY, STING", TRUE);
        DrawText(1, 16, "LIKE A BEE!", TRUE);
    }
    else if (index == 18)
    {
        set_bkg_data(128, 24, Drunk_Tiles);
        set_bkg_tiles(2, 4, Drunk_MapWidth, Drunk_MapHeight, Drunk_Map);
        DrawNumber(4, 0, 18, 3, TRUE);
        DrawText(1, 13, "DRUNK STUMBLES.", TRUE);
        DrawText(1, 14, "HE HITS HARD.", TRUE);
        DrawText(1, 15, "AND YELLS A LOT.", TRUE);
        DrawText(1, 16, "NOT FUN TO BE NEAR.", TRUE);
    }
    return BESTIARY;
}