output
tee: aFileReference
	| out |
	out := CronTee filePath: aFileReference.
	self output: out.
	^ out