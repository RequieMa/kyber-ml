#!/bin/bash
set -e
uv sync
uv run myst build --html --ci
