#ifndef _BESTIARY
#define _BESTIARY

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

void BestiarySetup();
uint8_t BestiaryUpdate();

#endif