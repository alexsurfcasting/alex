#! /bin/sh

# Script que pasa de markdown a html

for file in *.md
do
	pandoc -f markown -t html file
		...
		.
		.
		... from .. \
		-i $file \
		-o ${file%.md}.html
