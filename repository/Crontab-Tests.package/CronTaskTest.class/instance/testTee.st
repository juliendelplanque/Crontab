tests-output
testTee
	cronTask tee: '/tmp/test.log'.
	self assert: cronTask output class equals: CronTee.
	self assert: cronTask output filePath equals: '/tmp/test.log'.