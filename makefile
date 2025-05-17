COMP = fpc
# comp means compiler

SRC_PATH = ./src
BUILD_PATH = ./build

$(BUILD_PATH)/wcalc:$(SRC_PATH)/main.pas
	$(COMP) $(SRC_PATH)/main.pas
	rm -rf $(SRC_PATH)/main.o
	mv $(SRC_PATH)/main $(BUILD_PATH)/
	mv $(BUILD_PATH)/main $(BUILD_PATH)/wcalc
