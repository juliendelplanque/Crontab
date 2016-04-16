tests-visiting
testVisitCronNilComment
	CronNilComment new accept: visitor.
	self assert: visitor stream contents equals: 'comment: '''''