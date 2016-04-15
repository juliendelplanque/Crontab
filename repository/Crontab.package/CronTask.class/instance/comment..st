accessing
comment: aStringOrACronComment
	self assert: ((aStringOrACronComment isKindOf: CronComment) or: [ aStringOrACronComment isString ]).
	comment := aStringOrACronComment asCronComment