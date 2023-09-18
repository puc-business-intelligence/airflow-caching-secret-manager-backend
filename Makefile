.PHONY: build

build:
	python -m build
	twine upload dist/*
