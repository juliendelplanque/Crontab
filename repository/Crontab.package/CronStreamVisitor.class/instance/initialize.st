initialization
initialize
	super initialize.
	self
		lineEnding: Smalltalk os lineEnding;
		stream: (ReadWriteStream on: String new)