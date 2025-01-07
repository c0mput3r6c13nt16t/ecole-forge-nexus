#!/bin/bash

find . -type f -name "*.sh" | xargs -i basename {} | sed -e 's/.sh$//' | grep "_" | sort && find . -type f -name "*.sh" | xargs -i basename -s .sh {} | grep -v "_" | sort
