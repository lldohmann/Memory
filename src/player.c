#pragma bank 3

#include <gb/gb.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <gb/metasprites.h> 
#include "../src/player.h"
#include "../src/common.h"
#include "../res/maps/home.h"

#pragma region InitializePlayerGraphics
// Visual Aspects of player logic
const metasprite_t mouse_down[] = {
    {.dy=-16, .dx=-8, .dtile=0, .props=0},
    {.dy=0, .dx=8, .dtile=2, .props=0},
    METASPR_TERM
};
const metasprite_t mouse_up[] = {
    {.dy=-16, .dx=-8, .dtile=12, .props=0},
    {.dy=0, .dx=8, .dtile=14, .props=0},
    METASPR_TERM
};
const metasprite_t mouse_right0[] = {
    {.dy=-16, .dx=-8, .dtile=4, .props=0},
    {.dy=0, .dx=8, .dtile=6, .props=0},
    METASPR_TERM
};
const metasprite_t mouse_right1[] = {
    {.dy=-16, .dx = -8, .dtile=8, .props=0},
    {.dy=0, .dx=8, .dtile=10, .props=0},
    METASPR_TERM
};
const metasprite_t* const mouse_metasprites[4] = {
    mouse_down, mouse_up, mouse_right0, mouse_right1
};
#pragma endregion InitializePlayerGraphics

char check_map(uint8_t map_num, uint8_t x_pos, uint8_t y_pos)
{
    if (map_num == 0) // HOME
    {
        returnCollisionValue(x_pos, y_pos);
    }
} 

void PlayerUpdate(struct player *ptr)
{
    (void) ptr;
    switch (ptr->playerState)
    {
    case idle:
        joypadPrevious = joypadCurrent;
        joypadCurrent = joypad();
        if (joypadCurrent & J_UP)
        {
            //ptr->y -= 1;
            
            ptr->playerDirection = up;
        }
        else if (joypadCurrent & J_DOWN)
        {
            //ptr->y += 1;
            ptr->playerDirection = down;
        }
        else if (joypadCurrent & J_RIGHT)
        {
            //ptr->x += 1;
            ptr->playerDirection = right;
        }
        else if (joypadCurrent & J_LEFT)
        {
            //ptr->x -= 1;
            ptr->playerDirection = left;
        }
        break;
    
    default:
        break;
    }
}

void DrawPlayer(struct player *ptr)
{
    uint8_t timer = 0; // constantly resets to zero when function called timer does not work
    (void) ptr;
    switch (ptr->playerDirection)
    {
    case up:
        move_metasprite(mouse_metasprites[1], 0, 0, ptr->x, ptr->y);
        break;
    case down:
        move_metasprite(mouse_metasprites[0], 0, 0, ptr->x, ptr->y);
        break;
    case right:
        move_metasprite(mouse_metasprites[3], 0, 0, ptr->x, ptr->y);
        break;
    case left:
        move_metasprite_vflip(mouse_metasprites[2], 0, 0, ptr->x, ptr->y);
        break;
    default:
        move_metasprite_vflip(mouse_metasprites[2], 0, 0, ptr->x, ptr->y);
        break;
    }
}