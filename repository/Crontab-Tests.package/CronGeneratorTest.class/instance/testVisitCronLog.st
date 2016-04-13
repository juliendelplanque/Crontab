tests-visiting
testVisitCronLog
	self assert: (CronLog new accept: visitor) equals: ''