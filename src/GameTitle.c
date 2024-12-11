#include <gb/gb.h>
#include <gb/metasprites.h>
#include "../src/common.h"
#include "../res/Title_Tiles.h"
#include "../res/Globe_Tiles.h"
#include "../res/Title_Map.h"

// Building the globe meta sprite
const metasprite_t globe1[] = {
    {.dy=0, .dx=0, .dtile=0, .props=0},
    {.dy= 16, .dx=0, .dtile=2, .props=0},
    {.dy= -16, .dx=8, .dtile=4, .props=0},
    {.dy= 16, .dx=0, .dtile=6, .props=0},
    {.dy=-16, .dx=8, .dtile=8, .props=0},
    {.dy=16, .dx=0, .dtile=10, .props=0},
    {.dy=-16, .dx=8, .dtile=12, .props=0},
    {.dy=16, .dx=0, .dtile=14, .props=0},
    METASPR_TERM
};
const metasprite_t globe2[] = {
    {.dy=0, .dx=0, .dtile=16, .props=0},
    {.dy= 16, .dx=0, .dtile=18, .props=0},
    {.dy= -16, .dx=8, .dtile=20, .props=0},
    {.dy= 16, .dx=0, .dtile=22, .props=0},
    {.dy=-16, .dx=8, .dtile=24, .props=0},
    {.dy=16, .dx=0, .dtile=26, .props=0},
    {.dy=-16, .dx=8, .dtile=28, .props=0},
    {.dy=16, .dx=0, .dtile=30, .props=0},
    METASPR_TERM
};
const metasprite_t globe3[] = {
    {.dy=0, .dx=0, .dtile=32, .props=0},
    {.dy= 16, .dx=0, .dtile=34, .props=0},
    {.dy= -16, .dx=8, .dtile=36, .props=0},
    {.dy= 16, .dx=0, .dtile=38, .props=0},
    {.dy=-16, .dx=8, .dtile=40, .props=0},
    {.dy=16, .dx=0, .dtile=42, .props=0},
    {.dy=-16, .dx=8, .dtile=44, .props=0},
    {.dy=16, .dx=0, .dtile=46, .props=0},
    METASPR_TERM
};
const metasprite_t globe4[] = {
    {.dy=0, .dx=0, .dtile=48, .props=0},
    {.dy= 16, .dx=0, .dtile=50, .props=0},
    {.dy= -16, .dx=8, .dtile=52, .props=0},
    {.dy= 16, .dx=0, .dtile=54, .props=0},
    {.dy=-16, .dx=8, .dtile=56, .props=0},
    {.dy=16, .dx=0, .dtile=58, .props=0},
    {.dy=-16, .dx=8, .dtile=60, .props=0},
    {.dy=16, .dx=0, .dtile=62, .props=0},
    METASPR_TERM
};
const metasprite_t globe5[] = {
    {.dy=0, .dx=0, .dtile=64, .props=0},
    {.dy= 16, .dx=0, .dtile=66, .props=0},
    {.dy= -16, .dx=8, .dtile=68, .props=0},
    {.dy= 16, .dx=0, .dtile=70, .props=0},
    {.dy=-16, .dx=8, .dtile=72, .props=0},
    {.dy=16, .dx=0, .dtile=74, .props=0},
    {.dy=-16, .dx=8, .dtile=76, .props=0},
    {.dy=16, .dx=0, .dtile=78, .props=0},
    METASPR_TERM
};
const metasprite_t globe6[] = {
    {.dy=0, .dx=0, .dtile=80, .props=0},
    {.dy= 16, .dx=0, .dtile=82, .props=0},
    {.dy= -16, .dx=8, .dtile=84, .props=0},
    {.dy= 16, .dx=0, .dtile=86, .props=0},
    {.dy=-16, .dx=8, .dtile=88, .props=0},
    {.dy=16, .dx=0, .dtile=90, .props=0},
    {.dy=-16, .dx=8, .dtile=92, .props=0},
    {.dy=16, .dx=0, .dtile=94, .props=0},
    METASPR_TERM
};
const metasprite_t globe7[] = {
    {.dy=0, .dx=0, .dtile=96, .props=0},
    {.dy= 16, .dx=0, .dtile=98, .props=0},
    {.dy= -16, .dx=8, .dtile=100, .props=0},
    {.dy= 16, .dx=0, .dtile=102, .props=0},
    {.dy=-16, .dx=8, .dtile=104, .props=0},
    {.dy=16, .dx=0, .dtile=106, .props=0},
    {.dy=-16, .dx=8, .dtile=108, .props=0},
    {.dy=16, .dx=0, .dtile=110, .props=0},
    METASPR_TERM
};

const metasprite_t* const globe_metasprites[7] = {
    globe1, globe2, globe3, globe4, globe5, globe6, globe7
};

void GameTitleSetup(void)
{
    move_bkg(0,0);
    BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
    OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
    SPRITES_8x16;
    set_bkg_data(0, 50, TitleLabel);
    set_bkg_tiles(0, 0, Title_MapWidth, Title_MapHeight, Title_Map);
    set_sprite_data(0, 112, Globe_Tiles);
    move_metasprite(globe_metasprites[6], 0, 0, 88, 64);
    SHOW_BKG;
    SHOW_SPRITES;
    fadeFromBlack(10);
}

uint8_t timer = 0;
uint8_t frame = 0;
uint8_t GameTitleUpdate(void)
{
    joypadPrevious = joypadCurrent;
    joypadCurrent = joypad();
    timer++;
    if (timer == 60)
    {
        frame++; 
        timer = 0;
    }
    if (frame >= 7) frame = 0;
    move_metasprite(globe_metasprites[frame], 0, 0, 88, 64);
    if (joypadCurrent & J_START)
    {
        fadeToBlack(10);
        move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
        return COREGAMELOOP;
    }
    if (joypadCurrent & J_SELECT)
    {
        fadeToBlack(10);
        move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
        return GAMEJOHNDOE;
    }
    if (joypadCurrent & J_B)
    {
        fadeToBlack(3);
        fadeFromBlack(3);
        fadeToBlack(3);
        fadeFromBlack(3);
        fadeToBlack(3);
        move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
        return BATTLE;
    }
    if (joypadCurrent & J_A)
    {
        fadeToBlack(10);
        move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
        return BESTIARY;
    }
    //wait_vbl_done();
    return GAMETITLE;
}