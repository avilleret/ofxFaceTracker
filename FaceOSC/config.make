# add custom variables to this file

# OF_ROOT allows to move projects outside apps/* just set this variable to the
# absoulte path to the OF root folder

OF_ROOT = ../../..
UNAME := $(shell uname -s)

# USER_CFLAGS allows to pass custom flags to the compiler
# for example search paths like:
# USER_CFLAGS = -I src/objects

ifeq ($(UNAME),Linux)
  USER_CFLAGS = `pkg-config --cflags opencv gstreamer-1.0`
else
  USER_CFLAGS = 
endif


# USER_LDFLAGS allows to pass custom flags to the linker
# for example libraries like:
# USER_LD_FLAGS = libs/libawesomelib.a

USER_LDFLAGS = 


# use this to add system libraries for example:
# USER_LIBS = -lpango 

ifeq ($(UNAME),Linux)
  USER_LIBS = `pkg-config --libs opencv gstreamer-video-1.0 gstreamer-app-1.0`
else
  USER_LIBS =-lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_flann -lopencv_legacy -lopencv_ml -lopencv_objdetect -lopencv_ts -lopencv_video
endif

# change this to add different compiler optimizations to your project

USER_COMPILER_OPTIMIZATION = -march=native -mtune=native -Os


EXCLUDE_FROM_SOURCE="bin,.xcodeproj,obj,.git"
