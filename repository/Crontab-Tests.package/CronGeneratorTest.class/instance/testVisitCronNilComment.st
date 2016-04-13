tests-visiting
testVisitCronNilComment
	self assert: ((CronNilComment new) accept: visitor) equals: ''