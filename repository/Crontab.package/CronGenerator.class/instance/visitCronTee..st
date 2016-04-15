visiting
visitCronTee: aCronTee
	stream
		<< ' | tee ';
		<< (aCronTee filePath ifNil: [ self error: 'No filepath set.' ]);
		<< ' '.
	self visitCronTaskOutput: aCronTee.
	self removeTrailingWhiteSpace