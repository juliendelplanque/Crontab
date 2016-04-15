tests-visiting
testVisitCronComment
	(CronComment content: 'Hello') accept: visitor.
	self assert: visitor stream contents equals: (('# Hello
' splitOn: Character cr ) joinUsing: Smalltalk os lineEnding)