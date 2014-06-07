BUILD=slides

help:
	@echo "Available commands:"
	@echo "  - gen    Generate all slides"
	@echo "  - serve  Regenerate all slides and serve on localhost"

gen:
	ipython nbconvert $(BUILD)/*.ipynb --to slides --FilesWriter.build_directory=$(BUILD)

serve:
	ipython nbconvert $(BUILD)/*.ipynb --to slides --FilesWriter.build_directory=$(BUILD) --post serve

.PHONY: help