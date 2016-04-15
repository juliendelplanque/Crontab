tests-visiting
testVisitCronLog
	CronLog new accept: visitor.
	self assert: visitor stream contents equals: ''