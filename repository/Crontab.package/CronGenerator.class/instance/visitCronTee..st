visiting
visitCronTee: aCronTee
	^ (' | tee {1} {2}'
		format: { aCronTee filePath .
						self visitCronTaskOutput: aCronTee }) trimRight