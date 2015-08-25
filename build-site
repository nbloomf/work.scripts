#!/bin/bash

# Copy frozen PDFs to nbloomf.md
cp -r documents/classes/ca/freeze/* documents/nbloomf.md/pdf/classes/ca
cp -r documents/classes/abstract/freeze/* documents/nbloomf.md/pdf/classes/aa
cp -r documents/classes/geom/freeze/* documents/nbloomf.md/pdf/classes/geom

# Build nbloomf.github.io and copy files
(cd documents/nbloomf.md; make site && make move)

echo -e "\033[0;32mSuccessfully built nbloomf.github.io.\033[0m"
