tests-output
testTeeThenSendMailToWithSubject
	cronTask tee: '/tmp/test.log' thenSendMailTo: 'hello@world.st' withSubject: 'Hello!'.
	self assert: cronTask output class equals: CronTee.
	self assert: cronTask output filePath equals: '/tmp/test.log'.
	self assert: cronTask output outputTo class equals: CronMail.
	self assert: cronTask output outputTo mailAddress equals: 'hello@world.st'.
	self assert: cronTask output outputTo subject equals: 'Hello!'