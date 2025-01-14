#ifndef _GAMETITLE
#define _GAMETITLE

extern const uint8_t const_bank_ID_title;
BANKREF_EXTERN(const_bank_ID_title)

/**
 * Loads Title screen tiles into VRAM & Turns on displays.
*/
void GameTitleSetup(void);
BANKREF_EXTERN(GameTitleSetup)
/**
 * Waits for player to press start and fades game to black.
*/
uint8_t GameTitleUpdate(void);
BANKREF_EXTERN(GameTitleUpdate)
#endif