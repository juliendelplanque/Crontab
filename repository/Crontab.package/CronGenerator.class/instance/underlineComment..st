helpers
underlineComment: anInteger
	anInteger = 0 ifTrue: [ ^ self ].
	stream
		<< '# '.
	1 to: anInteger do: [ :i |
		stream << $- ].
	stream
		<< self lineEnding