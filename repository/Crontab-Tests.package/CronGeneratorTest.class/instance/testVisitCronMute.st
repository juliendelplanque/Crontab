tests-visiting
testVisitCronMute
	self assert: (CronMute new accept: visitor) equals: '> /dev/null 2>&1'