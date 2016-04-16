accessing
comment
	| str |
	^ super comment ==> [ :items |
		str := String newFrom: (items copyFrom: 2 to: items size) flatten.
		str first = Character space
			ifTrue: [ str := str copyFrom: 2 to: str size ].
		CronComment content: str ]