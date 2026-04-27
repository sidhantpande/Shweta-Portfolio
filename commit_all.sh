#!/bin/bash
FILES=$(git ls-files -m -o --exclude-standard)
for FILE in $FILES; do
    if [[ "$FILE" != *".DS_Store"* ]]; then
        echo "Committing $FILE"
        git add "$FILE"
        git commit -m "Update $FILE: Architectural refinements and asset migration"
    fi
done
