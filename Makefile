####################################################################################
#
#
####################################################################################
#
#
#

# lib must be built first, then the Process
SUBDIRS	= lib Processes 

all:	subdirs

include rules.sub
