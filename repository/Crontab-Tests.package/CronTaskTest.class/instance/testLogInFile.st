tests-output
testLogInFile
	cronTask logInFile: '/tmp/test.log'.
	self assert: cronTask output class equals: CronFile.
	self assert: cronTask output filePath equals: '/tmp/test.log'.