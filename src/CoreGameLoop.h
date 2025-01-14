/**
 * 
*/

#ifndef _COREGAMELOOP
#define _COREGAMELOOP

extern const uint8_t const_bank_ID_core;
BANKREF_EXTERN(const_bank_ID_core)

void CoreGameLoopSetup(void) BANKED;
BANKREF_EXTERN(CoreGameLoopSetup)

void set_camera(void) BANKED;
BANKREF_EXTERN(set_camera)

uint8_t CoreGameLoopUpdate(void) BANKED;
BANKREF_EXTERN(CoreGameLoopUpdate)
#endif