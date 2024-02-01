#include <gb/gb.h>
#include <stdint.h>
#include <stdio.h>
#include "../res/cast_tiles.h"
#include "../res/indoor_tiles.h"
#include "../res/home.h"
#include "../src/player.h"

void init_gfx() {
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

/**
void DrawPlayer(struct player *ptr)
{
    (void)ptr;
    move_metasprite(mouse_metasprites[1], 0, 0, ptr->x, ptr->y);
}
*/
void main(void)
{
	init_gfx();
    struct player mouse = {64, 64, 0, 0, left, idle};
    while(1) {
        PlayerUpdate(&mouse);
        DrawPlayer(&mouse);
        scroll_bkg(mouse.x, mouse.y);
		// Done processing, yield CPU and wait for start of next frame
        wait_vbl_done();
    }
}