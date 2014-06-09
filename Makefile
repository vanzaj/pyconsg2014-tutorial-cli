help:
	@echo "Available commands:"
	@echo "  - gen    Generate all slides"
	@echo "  - serve  Regenerate all slides and serve on localhost"

gen:
	cd slides && ipython nbconvert *.ipynb --to slides --config slides_conf.py

serve:
	cd slides && ipython nbconvert *.ipynb --to slides --config slides_conf.py --post serve

.PHONY: help