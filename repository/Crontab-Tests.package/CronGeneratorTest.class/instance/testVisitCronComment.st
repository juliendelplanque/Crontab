tests-visiting
testVisitCronComment
	self assert: ((CronComment content: 'Hello') accept: visitor) equals: (('# Hello
' splitOn: Character cr ) joinUsing: Smalltalk os lineEnding)