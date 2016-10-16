#!/bin/bash

cat NEBULA/EVAHandrailsPackContinued.version

echo "Enter version:"
read version

zip -9r EVAHandrailsPack-${version}.zip NEBULA
