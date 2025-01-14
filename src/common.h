#ifndef _COMMON
#define _COMMON

#define GAMEFIRSTLOAD 0
#define GAMETITLE 1
#define COREGAMELOOP 2
#define GAMEJOHNDOE 3
#define BESTIARY 4
#define BATTLE 5

extern uint8_t index;
extern uint8_t joypadPrevious, joypadCurrent;

/**
 * Stalls the game a specified number of frames.
 * 
 * @param numloops
 * The number of frames to wait.
*/
void performantdelay(uint8_t numloops) NONBANKED;

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
 * @param bkg
 * If true, print to background layer. If false, print to window layer.
*/
void DrawNumber(uint8_t x, uint8_t y, uint16_t number, uint8_t digits, BOOLEAN bgk) NONBANKED;

/**
 * CUSTOM FUNCTION TO PRINT NUMBERS OF A SPECIFIED AMOUNT OF DIGITS
 * 
 * @param x
 * The X position of the window tile map.
 * @param y
 *  The Y position of the window tile map.
 * @param text
 * The string to be printed
 * @param bkg
 * If true, print to background layer. If false, print to window layer.
*/
void DrawText(uint8_t x, uint8_t y, unsigned char *text, BOOLEAN bkg ) NONBANKED;

/**
 * Slowly causes the background pallet to turn black.
 * 
 * @param frames
 * The time it takes to change background pallet to black in frames. 
*/
void fadeToBlack(uint8_t frames) NONBANKED;

/**
 * Slowly causes the background pallet to return to normal from a black screen.
 * 
 * @param frames
 * The time it takes to change background pallet in frames. 
*/
void fadeFromBlack(uint8_t frames) NONBANKED;

/**
 * Slowly causes the background pallet to turn white.
 * 
 * @param frames
 * The time it takes to change background pallet to white in frames. 
*/
void fadeToWhite(uint8_t frames) NONBANKED;

/**
 * Slowly causes the background pallet to return to normal from a white screen.
 * 
 * @param frames
 * The time it takes to change background pallet in frames. 
*/
void fadeFromWhite(uint8_t frames) NONBANKED;

/**
 * Inverts the colors on the screen (Good for dark/night fights.)
*/
void InvertColor(void) NONBANKED;

/**
 * Returns color sceme to normal.
*/
void ResetColor(void) NONBANKED;

/**
 * Generates a random number.
 * @param min
 * Minimum value to be generated.
 * @param max
 * Maximum value to be generated.
 */
uint8_t RandomNumber(uint8_t min, uint8_t max) NONBANKED;

/**
 * Draws a window on either background or window layers.
 * @param x 
 * X position of window's top left corner.
 * @param y
 * Y position of window's top left corner.
 * @param width
 * Width (in tiles) of the window.
 * @param height
 * The height of the window in tiles.
 * @param bkg
 * If true, draws window on background layer, otherwise draw on window layer. 
 */
uint8_t DrawWindow(uint8_t x, uint8_t y, uint8_t width, uint8_t height, BOOLEAN bkg) NONBANKED;

#endif