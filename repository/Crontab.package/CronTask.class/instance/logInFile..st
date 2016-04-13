output
logInFile: aFileReference
	| out |
	out := (CronFile filePath: aFileReference).
	self output: out.
	^ out