include src/make/defaults
include src/make/rwildcard.make

$(BUILD_DIR)/cv.toml: $(wildcard src/data/*.toml)
	mkdir -p $(dir $@)
	cat > '$@' $?