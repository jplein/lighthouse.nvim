# Regenerate the committed colorscheme from the Lighthouse palette.
#
#   make          # build via `nix build` and copy the artifact into colors/
#   make build    # same as above
#   make clean    # remove the nix build result symlink

ARTIFACT := colors/lighthouse.lua

.DEFAULT_GOAL := build

.PHONY: build clean

build:
	nix build
	install -m 644 result/lighthouse.lua $(ARTIFACT)

clean:
	rm -f result
