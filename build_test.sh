#!/bin/bash

# Set up test environment
python3 -m pip install --upgrade wheel setuptools pip
python3 -m pip install -U pytest

# Add flag to indicate CI test environment
export ISTESTENV=true

# Force install of test dependencies before running pytest (should happen
#   automatically but sometimes fails)
python3 -m pip install .[dev]
python3 -m pytest
