#include <gb/gb.h>
#include <stdint.h>
#include <stdio.h>
#include "../res/cast_tiles.h"
#include "../res/indoor_tiles.h"
#include "../res/home.h"
#include "../src/player.h"

#define MIN(A,B) ((A)<(B)?(A):(B))

uint8_t joy;
// current and old positions of the camera in pixels
uint16_t camera_x, camera_y, old_camera_x, old_camera_y;
// current and old position of the map in tiles
uint8_t map_pos_x, map_pos_y, old_map_pos_x, old_map_pos_y;
// redraw flag, indicates that camera position was changed
uint8_t redraw;

void init_gfx() {
    // Camera code
    map_pos_x = map_pos_y = 0;
    old_map_pos_x = old_camera_y = 255; 
    camera_x = camera_y = 0;
    old_camera_x = camera_x; old_camera_y = camera_y;
    redraw = FALSE;
    // My code
    set_bkg_data(128, 144, IndoorTiles);
    set_bkg_based_submap(0, 0, HomeWidth, HomeHeight, Home, HomeWidth, 128);
    set_sprite_data(0, 128, Cast_Tiles);
    SPRITES_8x16;
    SHOW_BKG;
    SHOW_SPRITES;
}

struct hud {
    char name[7];
    uint8_t health, health_Max;
    uint8_t psychic, psychic_Max;
    uint16_t experience;
    uint16_t money;
    uint8_t offense, defense;
    uint8_t luck;
    BOOLEAN likesCheese;
};

// ------------ Input System -------------------
enum gameState {explore, menu, text};
enum gameState currentGameMode;

// ------------ Map System ---------------------
// current and old positions of the camera in pixels
uint16_t camera_x, camera_y, old_camera_x, old_camera_y;
// current and old position of the map in tiles
uint8_t map_pos_x, map_pos_y, old_map_pos_x, old_map_pos_y;
// redraw flag, indicates that camera position was changed
uint8_t redraw;
// TO DO: make parameters to reuse code for multiple maps.
void set_camera()
{
    // update hardware scroll position
    SCY_REG = camera_y; SCX_REG = camera_x;
    // up or down
    map_pos_y = (uint8_t)(camera_y >> 3u);
    if (map_pos_y != old_map_pos_y)
    {
        if (camera_y < old_camera_y)
        {
            set_bkg_based_submap(map_pos_x, map_pos_y, MIN(21u, HomeWidth-map_pos_x), 1, Home, HomeWidth, 128);
        }
        else 
        {
            if ((HomeHeight - 18u) > map_pos_y)
            {
                set_bkg_based_submap(map_pos_x, map_pos_y + 18u, MIN(21u, HomeWidth - map_pos_x), 1, Home, HomeWidth, 128);
            }
        }
        old_map_pos_y = map_pos_y;
    }
    // left or right
    map_pos_x = (uint8_t)(camera_x >> 3u);
    if (map_pos_x != old_map_pos_x)
    {
        if (camera_x < old_camera_x)
        {
            set_bkg_based_submap(map_pos_x, map_pos_y, 1, MIN(19u, HomeHeight - map_pos_y), Home, HomeWidth, 128);
        }
        else
        {
            if ((HomeWidth - 20u) > map_pos_x)
            {
                set_bkg_based_submap(map_pos_x + 20u, map_pos_y, 1, MIN(19u, HomeHeight - map_pos_y), Home, HomeWidth, 128);
            }
        }
        old_map_pos_x = map_pos_x;
    }
    // Set old camera position to current camera position
    old_camera_x = camera_x, old_camera_y = camera_y;
}

void main(void)
{
	init_gfx();
    struct player mouse = {64, 64, 0, 0, left, idle};
    SCX_REG = camera_x; SCY_REG = camera_y; 
    while(1) {
        PlayerUpdate(&mouse);
        DrawPlayer(&mouse);
        joy = joypad();
        if (joy & J_UP) {
            if (camera_y){
                camera_y--;
                redraw = TRUE;
            }
        } else if (joy & J_DOWN) {
            if (camera_y < HomeCameraMaxY)
            {
                camera_y++;
                redraw = TRUE;
            }
        } 
        // left or right
        if (joy & J_LEFT) {
            if (camera_x)
            {
                camera_x--;
                redraw = TRUE;
            }
        } else if (joy & J_RIGHT) {
            if (camera_x < HomeCameraMaxX)
            {
                camera_x++;
                redraw = TRUE;
            }
        } 
        if (redraw)
        {
            wait_vbl_done();
            set_camera();
            redraw = FALSE;
        }
        else 
        {
            // Done processing, yield CPU and wait for start of next frame
            wait_vbl_done();
        }
    }
}