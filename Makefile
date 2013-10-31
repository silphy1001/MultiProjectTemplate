##################################
# Includes
##################################
include rules.mak

#################################
# Subdirectories
#################################
SUB_DIR1=sub_project1
SUB_DIR2=sub_project2
SUB_DIR3=sub_project3
SUBDIRS=$(SUB_DIR1) $(SUB_DIR2) $(SUB_DIR3)

INSTALL_DIR=./install_dir

BIN_DIR1=./$(SUB_DIR1)/bin
BIN_DIR2=./$(SUB_DIR2)/bin
BIN_DIR3=./$(SUB_DIR3)/bin

EXT=.exe

.PHONY: all clean force install
	

all: $(SUBDIRS)
	

clean: $(SUBDIRS)
	

$(SUBDIRS): force
	make -C $@ $(MAKECMDGOALS)

force:
	

install:
	@cp -v $(BIN_DIR1)/$(TARGET1)$(EXT) $(INSTALL_DIR)/
	@cp -v $(BIN_DIR2)/$(TARGET2)$(EXT) $(INSTALL_DIR)/
	@cp -v $(BIN_DIR3)/$(TARGET3)$(EXT) $(INSTALL_DIR)/

#################################
# References
#################################

## サブディレクトリをmakeする綺麗な方法
# http://cyocho.blog109.fc2.com/blog-entry-52.html
