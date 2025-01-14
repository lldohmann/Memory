#pragma bank 0

#include <gb/gb.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define MAX(x, y) (((x) > (y)) ? (x) : (y))
#define MIN(x, y) (((x) < (y)) ? (x) : (y))
#define ABS(x) ((x < 0) ? -x : x)

uint8_t joypadPrevious = 0;
uint8_t joypadCurrent = 0;
int8_t index = 0;
void performantdelay(uint8_t numloops) NONBANKED
{
    for (uint8_t i = 0; i < numloops; i++)
    {
        wait_vbl_done();
    }
}

// CUSTOM FUNCTION TO PRINT NUMBERS OF A SPECIFIED AMOUNT OF DIGITS
void DrawNumber(uint8_t x, uint8_t y, uint16_t number, uint8_t digits, BOOLEAN bkg) NONBANKED
{
    unsigned char buffer[8]={'0', '0', '0', '0', '0', '0', '0', '0'};

    // Convert the number to a decimal string (stored in the buffer char array)
    uitoa(number, buffer, 10);

    // The memory address for the first digit tile
    uint8_t *vramAddr;
    if (bkg)
    {
        vramAddr = get_bkg_xy_addr(x,y); 
    }
    else {
        vramAddr = get_win_xy_addr(x,y);
    }

    // Get the length of the number so we can add leading zeros
    uint8_t len = strlen(buffer);

    // Add some leading zeros
    // uitoa will not do for us
    // Increase the VRAM address each iteration to move to the next tile
    for (uint8_t i=0; i<digits-len;i++)
    {
        set_vram_byte(vramAddr++, 283);
    }

    // Draw our number
    // Increase the VRAM address each iteration to move to the next tile
    for (uint8_t i=0; i<len; i++)
    {
        set_vram_byte(vramAddr++, (buffer[i] -'0')+283);
    }
}

void DrawText(uint8_t x, uint8_t y, unsigned char *text, BOOLEAN bkg ) NONBANKED
{
    uint8_t i=0;

    // The VRAM address of the first character
    // After setting a tile, we'll increase the VRAM address each iteration to move to the next tile
    uint8_t *vramAddr;
    if (bkg)
    {
        vramAddr = get_bkg_xy_addr(x,y); 
    }
    else {
        vramAddr = get_win_xy_addr(x,y);
    }

    while(text[i]!='\0'){

        // Map our alphabet characters to only use uppercase letters
        // From the SpaceInvadersFont.png/aseprite
        if(text[i]>='A'&&text[i]<='Z')set_vram_byte(vramAddr++,1+(text[i]-'A'));
        else if(text[i]>='a'&&text[i]<='z')set_vram_byte(vramAddr++,1+(text[i]-'a'));
        else if(text[i]>='0'&&text[i]<='9')set_vram_byte(vramAddr++,27+(text[i]-'0'));

        else {

            // Map our special characters manually
            // From the SpaceInvadersFont.png/aseprite
            switch(text[i]){
                case ':': set_vram_byte(vramAddr++,38); break;
                case '.': set_vram_byte(vramAddr++,43);break;
                case '/': set_vram_byte(vramAddr++,40);break;
                default: vramAddr++; break;
            }
        }


        i++;
    }
    VBK_REG=0;

}

void fadeToBlack(uint8_t frames) NONBANKED
{
    for (uint8_t i = 0; i < 4; i++)
    {
        switch(i) 
        {
            case 0: 
                BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
                OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
                break;
            case 1: 
                BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
                OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
                break;
            case 2:
                BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
                OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
                break;
            case 3:
                BGP_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
                OBP0_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
                break;
        }
        performantdelay(frames);
    }
}

void fadeFromBlack(uint8_t frames) NONBANKED
{
    for (uint8_t i = 0; i < 4; i++)
    {
        switch(i) 
        {
            case 0: 
                BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
                OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
                break;
            case 1: 
                BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
                OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
                break;
            case 2:
                BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
                OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
                break;
            case 3:
                BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
                OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
                break;
        }
        performantdelay(frames);
    }
}

void fadeToWhite(uint8_t frames) NONBANKED
{
    for (uint8_t i = 0; i < 5; i++)
    {
        switch(i) 
        {
            case 0: 
                BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
                OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
                break;
            case 1: 
                BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
                OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
                break;
            case 2:
                BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
                OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
                break;
            case 3:
                BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
                OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
                break;
            case 4:
                BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_WHITE);
                OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_WHITE);
                break;
        }
        performantdelay(frames);
    }
}

void fadeFromWhite(uint8_t frames) NONBANKED
{
    for (uint8_t i = 0; i < 4; i++)
    {
        switch(i) 
        {
            case 0: 
                BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
                OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
                break;
            case 1: 
                BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
                OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
                break;
            case 2:
                BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
                OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
                break;
            case 3:
                BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
                OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
                break;
        }
        performantdelay(frames);
    }
}

void InvertColor(void) NONBANKED
{
    BGP_REG = DMG_PALETTE(DMG_BLACK, DMG_DARK_GRAY, DMG_LITE_GRAY, DMG_WHITE);
    OBP0_REG = DMG_PALETTE(DMG_BLACK, DMG_DARK_GRAY, DMG_LITE_GRAY, DMG_WHITE);
}

void ResetColor(void) NONBANKED
{
    BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
}

uint8_t RandomNumber(uint8_t min, uint8_t max) NONBANKED
{
    // get value at memory address
    return min + (DIV_REG % (max - min)); 
}

void DrawWindow(uint8_t x, uint8_t y, uint8_t width, uint8_t height, BOOLEAN bkg) NONBANKED
{
    // The VRAM address of the first character
    // After setting a tile, we'll increase the VRAM address each iteration to move to the next tile
    uint8_t *vramAddr;
    if (bkg)
    {
        vramAddr = get_bkg_xy_addr(x,y); 
    }
    else {
        vramAddr = get_win_xy_addr(x,y);
    }
    set_vram_byte(vramAddr++,301u);             // TOP LEFT CORNER
    for (uint8_t i = 0; i < width - 2; i++)
    {
        set_vram_byte(vramAddr++,304u);         // TOP SIDE
    }
    set_vram_byte(vramAddr++,306u);             // TOP RIGHT CORNER
    // GO DOWN ONE ROW
    if (bkg) 
    {
        vramAddr = get_bkg_xy_addr(x,y+1); 
    }
    else {
        vramAddr = get_win_xy_addr(x,y+1);
    }
    for (uint8_t j = 0; j < height - 2; j++)
    {
        set_vram_byte(vramAddr++,302u); // LEFT SIDE
        for (uint8_t i = 0; i < width - 2; i++)
        {
            set_vram_byte(vramAddr++,256u);
        }
        set_vram_byte(vramAddr++,307u); // RIGHT SIDE
        if (bkg)
        {
            vramAddr = get_bkg_xy_addr(x,y+2+j); 
        }
        else {
            vramAddr = get_win_xy_addr(x,y+2+j);
        }
    }
    set_vram_byte(vramAddr++,303u);             // TOP LEFT CORNER
    for (uint8_t i = 0; i < width - 2; i++)
    {
        set_vram_byte(vramAddr++,305u);         // TOP SIDE
    }
    set_vram_byte(vramAddr++,308u);             // TOP RIGHT CORNER
}