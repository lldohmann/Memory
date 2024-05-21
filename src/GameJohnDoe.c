#include <gb/gb.h>
#include <gb/isr.h>
#include <gbdk/incbin.h>
#include "../src/common.h"
#include "../res/JohnDoe_Tiles.h"
#include "../res/JohnDoe_Map.h"

BOOLEAN wabble = FALSE;
// Wobble Look up Table
const uint8_t scanline_offsets_tbl[] = {0, 1, 2, 3, 3, 2, 1, 0, 0, 1, 2, 3, 3, 2, 1, 0};
const uint8_t scanline_normal_tbl[]  = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
const uint8_t * scanline_offsets = scanline_offsets_tbl;

// Create the ISR Function
void scanline_isr() CRITICAL INTERRUPT {
    SCX_REG = scanline_offsets[LY_REG & (uint8_t)7];
}
// Then set the LCD Status (scanline) interrupt to call the ISR function
// directly without using the GBDK interrupt dispatcher
ISR_VECTOR(VECTOR_STAT, scanline_isr)

// Note:
//    The LCD STAT vector (@ref VECTOR_STAT) cannot be used
//    in the same program as `stdio.h` since they install
//    an ISR vector to the same location.

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
    if (joypadCurrent & J_START)
    {
        if (wabble == FALSE)
        {
            // Set up the interrupt and enable it
            STAT_REG = STATF_MODE00;
            set_interrupts(VBL_IFLAG | LCD_IFLAG);
            //*scanline_offsets = scanline_offsets_tbl;
            wabble = TRUE;
        }
        else {
            //*scanline_offsets = scanline_normal_tbl;
            wabble = FALSE;
        }
    }
    if (joypadCurrent & J_SELECT)
    {
        fadeToBlack(10);
        return GAMETITLE;
    }
    //while (wabble)
    //{
        scanline_offsets = &scanline_offsets_tbl[(uint8_t)(sys_time >> 2) & 0x07u];
    //}
    return GAMEJOHNDOE;
}