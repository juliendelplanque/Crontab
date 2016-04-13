tests-output
testSendMailToWithSubject
	cronTask sendMailTo: 'hello@world.st' withSubject: 'Hello!'.
	self assert: cronTask output class equals: CronMail.
	self assert: cronTask output mailAddress equals: 'hello@world.st'.
	self assert: cronTask output subject equals: 'Hello!'