#include <gb/gb.h>
#include <stdint.h>
#include <stdio.h>
#include "../res/dungeon_map.h"
#include "../res/dungeon_tiles.h"
#include "../res/cast_tiles.h"


void init_gfx() {
    // Load Background tiles and then map
    //set_bkg_data(0, 79u, dungeon_tiles);
    //set_bkg_tiles(0, 0, 32u, 32u, dungeon_mapPLN0);

    // Load Cast tiles 
    set_sprite_data(0, 63, Cast_Tiles);
	// Turn the background map on to make it visible
    SHOW_BKG;
    SHOW_SPRITES;
}

struct entity {
    uint8_t x, y;
    uint8_t width, height;
};


void main(void)
{
	init_gfx();
    printf(" ");

    // Loop forever
    while(1) {


		// Game main loop processing goes here


		// Done processing, yield CPU and wait for start of next frame
        wait_vbl_done();
    }
}
