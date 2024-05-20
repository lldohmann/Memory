#ifndef _COMMON
#define _COMMON

#define GAMEFIRSTLOAD 0
#define GAMETITLE 1
#define COREGAMELOOP 2
#define GAMEJOHNDOE 3
#define BESTIARY 4

extern uint8_t joypadPrevious, joypadCurrent;

/**
 * Stalls the game a specified number of frames.
 * 
 * @param numloops
 * The number of frames to wait.
*/
void performantdelay(uint8_t numloops);

/**
 * CUSTOM FUNCTION TO PRINT NUMBERS OF A SPECIFIED AMOUNT OF DIGITS
 * 
 * @param x
 * The X position of the background tile map.
 * @param y
 *  The Y position of the background tile map.
 * @param number
 * The int number to be printed
 * @param digits
 * The number of digits to be printed.
*/
void DrawNumber(uint8_t x, uint8_t y, uint16_t number, uint8_t digits);

/**
 * Custom function to print text onto the background layer.
 * 
 * @param x
 * The X position of the background tile map.
 * @param y 
 * The Y position of the background tile map.
 * @param text
 * The string text to print out horizontally.
*/
//void DrawText(uint8_t x, uint8_t y, unsigned char *text );

/**
 * Slowly causes the background pallet to turn black.
 * 
 * @param frames
 * The time it takes to change background pallet to black in frames. 
*/
void fadeToBlack(uint8_t frames);

/**
 * Slowly causes the background pallet to return to normal from a black screen.
 * 
 * @param frames
 * The time it takes to change background pallet in frames. 
*/
void fadeFromBlack(uint8_t frames);

/**
 * Slowly causes the background pallet to turn white.
 * 
 * @param frames
 * The time it takes to change background pallet to white in frames. 
*/
void fadeToWhite(uint8_t frames);

/**
 * Slowly causes the background pallet to return to normal from a white screen.
 * 
 * @param frames
 * The time it takes to change background pallet in frames. 
*/
void fadeFromWhite(uint8_t frames);

/**
 * Inverts the colors on the screen (Good for dark/night fights.)
*/
void InvertColor();

/**
 * Returns color sceme to normal.
*/
void ResetColor();

#endif