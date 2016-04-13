tests-visiting
testVisitCronNilFrequency
	self assert: (CronNilFrequency new accept: visitor) equals: ''