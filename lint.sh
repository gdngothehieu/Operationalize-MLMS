#!/bin/bash -eo pipefail
. venv/bin/activate
make lint 
$SHELL