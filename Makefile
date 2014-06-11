help:
	@echo "Available commands:"
	@echo "  - gen    Generate all slides"
	@echo "  - serve  Regenerate all slides and serve on localhost"

gen:
	cd ipynb && ipython nbconvert *.ipynb --to slides --config slides_conf.py

serve:
	cd ipynb && ipython nbconvert *.ipynb --to slides --config slides_conf.py --post serve

.PHONY: help