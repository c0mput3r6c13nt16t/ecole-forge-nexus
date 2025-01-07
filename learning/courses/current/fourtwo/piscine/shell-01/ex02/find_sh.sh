#!/bin/bash

find . -type f -name "*.sh" | xargs -i basename {} | sed -e 's/.sh$//' | sort
