#include <gb/gb.h>
#include "../src/common.h"
#include "../src/GameTitle.h"
#include "../src/CoreGameLoop.h"
#include "../src/GameJohnDoe.h"
#include "../src/Bestiary.h"
#include "../src/Battle.h"

void main(void)
{
    uint8_t currentGameState = GAMEFIRSTLOAD;
    uint8_t nextGameState = GAMETITLE;

    // Loop forever
    while(1) { 
        /////////////////////////////////////////////////////////////////////
        //                 GAME STATE MACHINE                              //
        /////////////////////////////////////////////////////////////////////
        if (nextGameState != currentGameState)
        {
            currentGameState = nextGameState;
            switch (currentGameState)
            {
            case GAMETITLE:
                SWITCH_ROM(BANK(const_bank_ID_title));
                GameTitleSetup();
                break;
            case GAMEJOHNDOE:
                SWITCH_ROM(BANK(const_bank_ID_John));
                GameJohnDoeSetup();
                break;
            case COREGAMELOOP:
                SWITCH_ROM(BANK(const_bank_ID_core));
                CoreGameLoopSetup();
                break;
            case BESTIARY:
                SWITCH_ROM(BANK(const_bank_ID_bestiary));
                BestiarySetup();
                break;
            case BATTLE:
                SWITCH_ROM(BANK(const_bank_ID_battle));
                BattleSetup();
                break;
            default:
                break;
            }
        }
        switch (currentGameState)
        {
        case GAMETITLE:
            nextGameState = GameTitleUpdate();
            break;
        case GAMEJOHNDOE:
            nextGameState = GameJohnDoeUpdate();
            break;
        case COREGAMELOOP:
            nextGameState = CoreGameLoopUpdate();
            break;
        case BESTIARY:
            nextGameState = BestiaryUpdate();
            break;
        case BATTLE:
            nextGameState = BattleUpdate();
            break;
        default:
            break;
        }
    }
}
