#! /bin/sh

# Passar de markdown a html

for file in *.md
do
	pandoc --standalone \
		--from markdown \
		--to html \
		$file \
		--output ${file%.md}.html
		
	xmllint \ 
		--noout \ 
		--valid ${file%.md}.html
done
