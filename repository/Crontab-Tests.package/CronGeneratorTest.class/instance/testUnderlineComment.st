tests-helpers
testUnderlineComment
	visitor underlineComment: 5.
	self assert: visitor stream contents equals: (('# -----
' splitOn: Character cr ) joinUsing: Smalltalk os lineEnding)