# architecture makefile configure

# prefix & suffix
BIN_PREFIX 		= 
BIN_SUFFIX 		= 

OBJ_PREFIX 		= 
OBJ_SUFFIX 		= .o

LIB_PREFIX 		= lib
LIB_SUFFIX 		= .a

DLL_PREFIX 		= lib
DLL_SUFFIX 		= .so

ASM_SUFFIX 		= .S

# tool
#PRE 			= arm-uclibc-linux-
PRE 			= arm-hisi-linux-
CC 				= $(PRE)gcc
AR 				= $(PRE)ar
LD 				= $(PRE)gcc
STRIP 			= $(PRE)strip
RANLIB 			= $(PRE)ranlib
AS				= $(PRE)gcc
RM 				= rm -f
RMDIR 			= rm -rf
CP 				= cp
CPDIR 			= cp -r
MKDIR 			= mkdir -p
MAKE 			= make
PWD 			= pwd

# cflags
CFLAGS_RELEASE 	= -O2 -fomit-frame-pointer
CFLAGS_DEBUG 	= -g -DCONFIG_DEBUG
CFLAGS 			= -c -Wall -std=c99
CFLAGS-I 		= -I
CFLAGS-o 		= -o

# ldflags
LDFLAGS			= -static
LDFLAGS-L 		= -L
LDFLAGS-l 		= -l
LDFLAGS-o 		= -o

# asflags
ASFLAGS 		= -c -O3 -g -Wall
ASFLAGS-I 		= -I
ASFLAGS-o 		= -o

# arflags
ARFLAGS 		= -rc

# share ldflags
SHFLAGS 		=

# include sub-config
include 		$(PLAT_DIR)$(_)config.mak


