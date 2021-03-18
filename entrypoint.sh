#!/bin/bash

echo "====> Checking for migations"
python -m django makemigrations --check