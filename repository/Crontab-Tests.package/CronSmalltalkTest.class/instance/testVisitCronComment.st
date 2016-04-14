tests-as yet unclassified
testVisitCronComment
	self
		assert: ((CronComment content: 'This is a comment') accept: visitor)
		equals: 'comment: ''This is a comment'''