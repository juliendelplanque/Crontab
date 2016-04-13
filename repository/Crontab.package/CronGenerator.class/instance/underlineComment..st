helpers
underlineComment: anInteger
	anInteger = 0 ifTrue: [ ^ '' ].
	^ '# ' , (String newFrom: ((1 to: anInteger) collect: [ :i | $- ])) , self lineEnding