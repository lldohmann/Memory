#ifndef _GAMEJOHNDOE
#define _GAMEJOHNDOE

/**
 * Loads John Doe's tiles into VRAM & turns on displays
*/
void GameJohnDoeSetup();

/**
 * Waits for player to press A and fades game to black. Press A again to fade in from black.
*/
uint8_t GameJohnDoeUpdate();

#endif