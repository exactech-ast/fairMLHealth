#!/bin/bash

# Set up test environment
python3 -m pip install --upgrade wheel setuptools pip
python3 -m pip install -U pytest

# Add flag to indicate to the package that it's running in a test environment (activates certain tests that otherwise wouldn't run)
export ISTESTENV=true

# Install package and run pytest
python3 -m pip install .[dev]
python3 -m pytest
