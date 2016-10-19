#Start with a shell

SHELL	=	/bin/sh

.EXPORT_ALL_VARIABLES:

DEPEND	:= $(shell touch .depend) 
#	Target is Linux
ifeq ($(OS),Linux)
	TARGET		= -DLINUX -DDEBUG
	FLAGS		= -Wall -g 
	MYSQLLIB    = -L/usr/lib/mysql
	INCLUDE		= -I/usr/include
	LIBRARY		= -L/usr/lib/
endif

TOP			= ..
COBJS		=publicTalks.o
CSRCS		= ${COBJS:o=c}
OBJS 		= $(COBJS)
CPP		=g++
CFLAGS		= $(FLAGS) $(INCLUDE)
LDFLAGS		= $(LIBRARY) $(MYSQLLIB)


PROG 		= publicTalks

all: $(PROG)

$(PROG) :$(COBJS)
	$(CPP) $(OBJS) -o $(PROG)

#	Rules for OBJS
$(OBJS):	%.o: %.cpp
	$(CC) -c $(CFLAGS) $< -o $@
	
warnings:	dummy
	$(MAKE) clean
	$(MAKE) CFLAGS="-v $(CWARNINGS)" all

dep depend::
	$(CC) $(CPPFLAGS) -xM1 *.c >.depend
	
clean::	dummy
	rm -f *.o *~ *% core $(PROG)
	
clean:: dummy
	rm -f *.o *~ *% core test $(OBJS)

include .depend

dummy:
