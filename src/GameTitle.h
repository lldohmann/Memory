#ifndef _GAMETITLE
#define _GAMETITLE

/**
 * Loads Title screen tiles into VRAM & Turns on displays.
*/
void GameTitleSetup(void);

/**
 * Waits for player to press start and fades game to black.
*/
uint8_t GameTitleUpdate(void);

#endif