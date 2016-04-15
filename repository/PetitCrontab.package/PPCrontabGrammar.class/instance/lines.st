accessing
lines
	^ (((comment / line) , #newline asParser) / emptyLine) star