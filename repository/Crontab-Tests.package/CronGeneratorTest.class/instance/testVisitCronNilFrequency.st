tests-visiting
testVisitCronNilFrequency
	CronNilFrequency new accept: visitor.
	self assert: visitor stream contents equals: ''