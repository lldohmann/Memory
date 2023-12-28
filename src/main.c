#include <gb/gb.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "../res/dungeon_map.h"
#include "../res/dungeon_tiles.h"
#include "../res/cast_tiles.h"
#include "../res/indoor_tiles.h"
#include "../res/home_living_room.h"


void init_gfx() {
    // Load Background tiles and then map
    set_bkg_data(128, 78, IndoorTiles);
    set_bkg_based_submap(0, 0, MapWidth, MapHeight, Map, MapWidth, 128);
    //set_bkg_based_tiles(0, 0, MapWidth, MapHeight, Map, 128);

    // Load Cast tiles 
    set_sprite_data(0, 128, Cast_Tiles);
	// Turn the background map on to make it visible
    SHOW_BKG;
    SHOW_SPRITES;
}

struct entity {
    uint8_t x, y;
    uint8_t width, height;
};

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


void main(void)
{
	init_gfx();

    struct hud player;
    strcpy(player.name, "Mouse");
    player.health = 20;
    player.health_Max = 20;
    player.psychic = 14;
    player.psychic_Max = 14;
    player.offense = 8;
    player.defense = 5;
    player.luck = 11;
    player.experience = 0;

    //printf(" ");
    // Loop forever
    while(1) {


		// Game main loop processing goes here


		// Done processing, yield CPU and wait for start of next frame
        wait_vbl_done();
    }
}
