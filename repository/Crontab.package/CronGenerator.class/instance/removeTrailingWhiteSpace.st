helpers
removeTrailingWhiteSpace
	[ stream peekBack = Character space ]
		whileTrue: [ stream back ]