include src/make/defaults
include src/make/rwildcard.make

.SILENT: $(BUILD_DIR)/cv.toml
$(BUILD_DIR)/cv.toml: $(wildcard src/data/*.toml)

	echo "Rebuilding $@"
	install -D /dev/null $@
	for f in $? ; do cat $$f >> $@ ; done
