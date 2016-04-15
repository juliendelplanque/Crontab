tests-visiting
testVisitCronMute
	CronMute new accept: visitor.
	self assert: visitor stream contents equals: '> /dev/null 2>&1'