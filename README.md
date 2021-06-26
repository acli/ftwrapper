This is a simple wrapper to work around the FT_Get_Font_Format symbol lookup error
for those of us who have older versions of FreeType
that have the FT_Get_X11_Font_Format function but not FT_Get_Font_Format.

To use it, you have to use LD_PRELOAD to preload this shared library *and* the FreeType shared library
(if you preload only this library you’ll still get a symbol lookup error),
for example:

    LD_PRELOAD='/usr/lib/x86_64-linux-gnu/libfreetype.so:/usr/local/lib/ftwrapper.so' some_command
