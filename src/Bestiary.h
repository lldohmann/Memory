#ifndef _BESTIARY
#define _BESTIARY

extern const uint8_t const_bank_ID_bestiary;
BANKREF_EXTERN(const_bank_ID_bestiary)

typedef struct Enemy
{
    char name[7];
    uint16_t id;
    uint16_t attack;
    uint16_t defense;
    uint16_t special;
    uint16_t speed;
    uint16_t exp;
};

void BestiarySetup(void) BANKED;
BANKREF_EXTERN(BestiarySetup)

uint8_t BestiaryUpdate(void) BANKED;
BANKREF_EXTERN(BestiaryUpdate)

#endif