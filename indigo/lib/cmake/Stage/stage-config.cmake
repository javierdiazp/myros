# - Config file for Stage
# It defines the following variables:
#    STAGE_INCLUDE_DIRS - Stage Include directories
#    STAGE_LIBRARIES    - Stage link libraries

set(STAGE_INCLUDE_DIRS "${stage_DIR}/../../../include/Stage-4.1" 
  "/usr/lib/fltk;/usr/include"
  "/usr/include")
list(REMOVE_DUPLICATES STAGE_INCLUDE_DIRS)
set(STAGE_LIBRARIES 
  "${stage_DIR}/../../../lib/libstage.so"
  "fltk_images;fltk_forms;fltk_gl;/usr/lib/i386-linux-gnu/libGL.so;fltk;/usr/lib/i386-linux-gnu/libSM.so;/usr/lib/i386-linux-gnu/libICE.so;/usr/lib/i386-linux-gnu/libX11.so;/usr/lib/i386-linux-gnu/libXext.so;/usr/lib/i386-linux-gnu/libm.so"
  "")
  
