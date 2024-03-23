/*

 HOME.H

 Map Include File.

 Info:
   Section       : 
   Bank          : 0
   Map size      : 49 x 66
   Tile set      : C:\gbtd22\Memory_Indoors.gbr
   Plane count   : 1 plane (8 bits)
   Plane order   : Tiles are continues
   Tile offset   : 0
   Split data    : No

 This file was generated by GBMB v1.8

*/
#include <stdint.h>
#define HomeWidth 49
#define HomeHeight 66
#define HomeBank 0
#define HomeCameraMaxX ((HomeWidth - 20) * 8)
#define HomeCameraMaxY ((HomeHeight - 18) * 8)

extern const unsigned char Home[];
extern const unsigned char HOME_COLLISION[][21];
uint8_t returnCollisionValue(char value);
/* End of HOME.H */
