tests-as yet unclassified
testVisitCronComment
	(CronComment content: 'This is a comment') accept: visitor.
	self
		assert: visitor stream contents
		equals: 'comment: ''This is a comment'''