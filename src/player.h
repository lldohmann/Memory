#pragma once

/**
 * A Player represents the user's overworld character.
 * A 16 x 16 rectangle with update and drawing logic.
 * It also reads player input
*/

/**
 * Struct for player data. Deliberately public
*/
enum direction {down, up, right, left};
enum state {idle, moving, paused};

typedef struct player {
    uint16_t x,y;
    uint8_t moveSpeed;
    uint8_t frame;
    enum direction playerDirection;
    enum state playerState;
};

/**
 * Handles the internal states of the player as well as user input during overworld activities.
 * 
 * @param ptr
 *  A pointer to the player character.
*/
void PlayerUpdate(struct player *ptr);

/**
 * Handles drawing the player character with the correct directional sprite.
 * 
 * @param ptr
 *  A pointer to the player character.
*/
void DrawPlayer(struct player *ptr, uint8_t joy);