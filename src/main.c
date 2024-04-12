#include <gb/gb.h>
#include "../src/common.h"
#include "../src/GameTitle.h"
#include "../src/CoreGameLoop.h"
#include "../src/GameJohnDoe.h"

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

            if (currentGameState == GAMETITLE) GameTitleSetup();
            else if (currentGameState == COREGAMELOOP) CoreGameLoopSetup();
            else if (currentGameState == GAMEJOHNDOE) GameJohnDoeSetup();
        }
        if (currentGameState == GAMETITLE) nextGameState = GameTitleUpdate();
        else if (currentGameState == COREGAMELOOP) nextGameState = CoreGameLoopUpdate();
        else if (currentGameState == GAMEJOHNDOE) nextGameState = GameJohnDoeUpdate();
        //wait_vbl_done();
    }
}
