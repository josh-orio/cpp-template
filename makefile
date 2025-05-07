PROJECT := exampl_proj
BUILD_DIR := build
EXECUTABLE := $(BUILD_DIR)/$(PROJECT)

.PHONY: all build clean run

all: build run

build:
	@mkdir -p $(BUILD_DIR)
	cd $(BUILD_DIR) && PROJECT_NAME=$(PROJECT) cmake .. && $(MAKE) -j

debug: build
	@lldb $(EXECUTABLE)

clean:
	@rm -rf $(BUILD_DIR)

run:
	@$(EXECUTABLE)
