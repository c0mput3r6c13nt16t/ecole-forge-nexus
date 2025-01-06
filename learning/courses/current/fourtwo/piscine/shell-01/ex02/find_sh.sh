find . -type f -name "*.sh" | xargs -i basename -s .sh {} | grep "_" && find . -type f -name "*.sh" | xargs -i basename -s .sh {} | grep -v "_" | sort
