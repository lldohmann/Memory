#ifndef _GAMEJOHNDOE
#define _GAMEJOHNDOE

extern const uint8_t const_bank_ID_John;
BANKREF_EXTERN(const_bank_ID_John)

/**
 * Loads John Doe's tiles into VRAM & turns on displays
*/
void GameJohnDoeSetup(void) BANKED;
BANKREF_EXTERN(GameJohnDoeSetup)
/**
 * Waits for input to test various screen effects.
*/
uint8_t GameJohnDoeUpdate(void) BANKED;
BANKREF_EXTERN(GameJohnDoeUpdate)

void scanline_isr(void) CRITICAL INTERRUPT;

#endif