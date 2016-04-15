visiting
visitCronFile: aCronFile
	stream
		<< ' > ';
		<< aCronFile filePath asFileReference fullName