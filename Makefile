#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = %cd%

CC = gcc.exe
CXX = g++.exe
AR = ar.exe
LD = g++.exe
WINDRES = windres.exe

INC = -IC:\\wxWidgets\\include
CFLAGS = -Wall -pipe -mthreads -D__GNUWIN32__ -D__WXMSW__ -DWXUSINGDLL -DwxUSE_UNICODE
RESINC = 
LIBDIR = 
LIB = 
LDFLAGS = -mthreads

INC_DEBUG = $(INC) -IC:\wxWidgets\lib\gcc810_x64_dll\mswud -IC:\wxWidgets\include
CFLAGS_DEBUG = $(CFLAGS) -g -D__WXDEBUG__
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR) -LC:\wxWidgets\lib\gcc810_x64_dll
LIB_DEBUG = $(LIB) C:\wxWidgets\lib\gcc810_x64_dll\libwxmsw30ud_core.a C:\wxWidgets\lib\gcc810_x64_dll\libwxbase30ud.a
LDFLAGS_DEBUG = $(LDFLAGS)
OBJDIR_DEBUG = obj\\Debug
DEP_DEBUG = 
OUT_DEBUG = bin\\Debug\\Lab1.exe

INC_RELEASE = $(INC) -IC:\wxWidgets\lib\gcc810_x64_dll\mswud -IC:\wxWidgets\include
CFLAGS_RELEASE = $(CFLAGS) -O2 -pipe -mthreads -Wall -D__GNUWIN32__ -D__WXMSW__ -D__WXDEBUG__ -DWXUSINGDLL -DwxUSE_UNICODE
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR) -LC:\wxWidgets\lib\gcc810_x64_dll
LIB_RELEASE = $(LIB) C:\wxWidgets\lib\gcc810_x64_dll\libwxmsw30u_core.a C:\wxWidgets\lib\gcc810_x64_dll\libwxbase30u.a
LDFLAGS_RELEASE =  -s $(LDFLAGS)
OBJDIR_RELEASE = obj\\Release
DEP_RELEASE = 
OUT_RELEASE = bin\\Release\\Lab1.exe

OBJ_DEBUG = $(OBJDIR_DEBUG)\\XYZ.o $(OBJDIR_DEBUG)\\main.o $(OBJDIR_DEBUG)\\wxPoints.o

OBJ_RELEASE = $(OBJDIR_RELEASE)\\XYZ.o $(OBJDIR_RELEASE)\\main.o $(OBJDIR_RELEASE)\\wxPoints.o

all: debug release

clean: clean_debug clean_release

before_debug: 
	cmd /c if not exist bin\\Debug md bin\\Debug
	cmd /c if not exist $(OBJDIR_DEBUG) md $(OBJDIR_DEBUG)

after_debug: 

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LIBDIR_DEBUG) -o $(OUT_DEBUG) $(OBJ_DEBUG)  $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)\\XYZ.o: XYZ.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c XYZ.cpp -o $(OBJDIR_DEBUG)\\XYZ.o

$(OBJDIR_DEBUG)\\main.o: main.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c main.cpp -o $(OBJDIR_DEBUG)\\main.o

$(OBJDIR_DEBUG)\\wxPoints.o: wxPoints.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c wxPoints.cpp -o $(OBJDIR_DEBUG)\\wxPoints.o

clean_debug: 
	cmd /c del /f $(OBJ_DEBUG) $(OUT_DEBUG)
	cmd /c rd bin\\Debug
	cmd /c rd $(OBJDIR_DEBUG)

before_release: 
	cmd /c if not exist bin\\Release md bin\\Release
	cmd /c if not exist $(OBJDIR_RELEASE) md $(OBJDIR_RELEASE)

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)\\XYZ.o: XYZ.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c XYZ.cpp -o $(OBJDIR_RELEASE)\\XYZ.o

$(OBJDIR_RELEASE)\\main.o: main.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c main.cpp -o $(OBJDIR_RELEASE)\\main.o

$(OBJDIR_RELEASE)\\wxPoints.o: wxPoints.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c wxPoints.cpp -o $(OBJDIR_RELEASE)\\wxPoints.o

clean_release: 
	cmd /c del /f $(OBJ_RELEASE) $(OUT_RELEASE)
	cmd /c rd bin\\Release
	cmd /c rd $(OBJDIR_RELEASE)

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release

