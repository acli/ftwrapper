/* vi: set sw=3 ai sm: */

#include <ft2build.h>
#include <freetype2/freetype.h>
#include <freetype2/ftxf86.h>

const char *
FT_Get_Font_Format( FT_Face face ) {
   return FT_Get_X11_Font_Format(face);
}
