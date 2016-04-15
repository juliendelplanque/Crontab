generation
generateIn: aFileReference
	| file |
	file := (FileStream newFileNamed: aFileReference).
	
	file nextPutAll: self generate.
