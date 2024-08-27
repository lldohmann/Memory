#include <gb/gb.h>
#include <stdint.h>
#include <stdio.h>
#include "../res/cast_tiles.h"
#include "../res/indoor_tiles.h"
#include "../res/home.h"
#include "../src/player.h"
#include "../src/common.h"
#include "../res/Skateboard_Tiles.h"
#include "../res/Pets_Map.h"

#define MIN(A,B) ((A)<(B)?(A):(B))

// ------------ Map System ---------------------
// current and old positions of the camera in pixels (origin top left)
uint16_t camera_x_pixels, camera_y_pixels, old_camera_x_pixels, old_camera_y_pixels;
// current and old position of the map in tiles
uint8_t map_pos_x_tiles, map_pos_y_tiles, old_map_pos_x_tiles, old_map_pos_y_tiles;
// redraw flag, indicates that camera position was changed
uint8_t redraw;
void set_camera()
{
    // update hardware scroll position
    SCY_REG = camera_y_pixels; SCX_REG = camera_x_pixels;
    // up or down
    map_pos_y_tiles = (uint8_t)(camera_y_pixels >> 3u);
    if (map_pos_y_tiles != old_map_pos_y_tiles)
    {
        if (camera_y_pixels < old_camera_y_pixels) // if camera is moving up
        {
            set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
        }
        else  // camera is moving down
        {
            if ((HomeHeight - 18u) > map_pos_y_tiles) // (have we touched the bottom of the map?) if not then...
            {
                set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles + 18u, MIN(21u, HomeWidth - map_pos_x_tiles), 1, Home, HomeWidth, 128);
            }
        }
        old_map_pos_y_tiles = map_pos_y_tiles;
    }
    // left or right
    map_pos_x_tiles = (uint8_t)(camera_x_pixels >> 3u);
    if (map_pos_x_tiles != old_map_pos_x_tiles)
    {
        if (camera_x_pixels < old_camera_x_pixels)
        {
            set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
        }
        else
        {
            if ((HomeWidth - 20u) > map_pos_x_tiles)
            {
                set_bkg_based_submap(map_pos_x_tiles + 20u, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
            }
        }
        old_map_pos_x_tiles = map_pos_x_tiles;
    }
    // Set old camera position to current camera position
    old_camera_x_pixels = camera_x_pixels, old_camera_y_pixels = camera_y_pixels;
}

struct player mouse = {88, 96, 0, 0, left, idle};

void CoreGameLoopSetup()
{
    // Camera code
    map_pos_x_tiles = map_pos_y_tiles = 0;
    old_map_pos_x_tiles = old_camera_y_pixels = 255; 
    camera_x_pixels = 208;
    camera_y_pixels = 96;
    old_camera_x_pixels = camera_x_pixels; old_camera_y_pixels = camera_y_pixels;
    redraw = FALSE;
    // My code
    set_bkg_data(128, 144, IndoorTiles);
    set_bkg_based_submap(0, 0, 20u, 18u, Home, HomeWidth, 128);
    set_sprite_data(0, 128, Cast_Tiles);
    SPRITES_8x16;
    SHOW_BKG;
    SHOW_SPRITES;
    set_camera();
    fadeFromBlack(10);
    DrawNumberWindow(1, 1, 31, 4);
    DrawTextWindow(1, 3, "Window Text");
}

void CoreGameLoopSetup2()
{
    // Camera code
    map_pos_x_tiles = map_pos_y_tiles = 0;
    old_map_pos_x_tiles = old_camera_y_pixels = 255; 
    camera_x_pixels = 208;
    camera_y_pixels = 96;
    old_camera_x_pixels = camera_x_pixels; old_camera_y_pixels = camera_y_pixels;
    redraw = FALSE;
    // My code
    set_bkg_data(128, 144, IndoorTiles);
    set_bkg_based_submap(0, 0, 20u, 18u, Home, HomeWidth, 128);
    set_sprite_data(0, 128, Cast_Tiles);
    SPRITES_8x16;
    SHOW_BKG;
    SHOW_SPRITES;
    set_camera();
    fadeFromBlack(10);
}

uint8_t camera_pixel_goal_x, camera_pixel_goal_y;

uint8_t CoreGameLoopUpdate()
{
    joypadCurrent = joypad();
    PlayerUpdate(&mouse);
    DrawPlayer(&mouse);
    if ((joypadCurrent & J_B) && !(joypadPrevious & J_B))
    {

    }
    if (joypadCurrent & J_UP) {
        if (camera_y_pixels){
            camera_y_pixels--;
            redraw = TRUE;
        }
    } else if (joypadCurrent & J_DOWN) {
        if (camera_y_pixels < HomeCameraMaxY)
        {
            camera_y_pixels++;
            redraw = TRUE;
        }
    } 
    // left or right
    if (joypadCurrent & J_LEFT) {
        if (camera_x_pixels)
        {
            camera_x_pixels--;
            redraw = TRUE;
        }
    } else if (joypadCurrent & J_RIGHT) {
        if (camera_x_pixels < HomeCameraMaxX)
        {
            camera_x_pixels++;
            redraw = TRUE;
        }
    } else if (joypadCurrent & J_SELECT) {
        fadeToBlack(10);
        return GAMETITLE;
    }
    else if (joypadCurrent & J_A)
    {
        set_sprite_data(0, 16, Skateboard_Tiles);
    }
    if (redraw)
    {
        wait_vbl_done();
        set_camera();
        redraw = FALSE;
    }
    //wait_vbl_done();
    return COREGAMELOOP;
}