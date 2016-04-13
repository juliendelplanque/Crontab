accessing
comment: aStringOrACronComment
	self assert: ((aStringOrACronComment isKindOf: CronComment) or: [ aStringOrACronComment isString ]).
	aStringOrACronComment isString
		ifTrue: [ comment := CronComment content: aStringOrACronComment ]
		ifFalse: [ comment := aStringOrACronComment ]