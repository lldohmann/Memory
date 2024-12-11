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
                GameTitleSetup();
                break;
            case GAMEJOHNDOE:
                GameJohnDoeSetup();
                break;
            case COREGAMELOOP:
                CoreGameLoopSetup();
                break;
            case BESTIARY:
                BestiarySetup();
                break;
            case BATTLE:
                BattleSetup();
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
