.PHONY: build

requirements:
	pip install twine build

build: requirements
	python -m build
	twine upload dist/*
