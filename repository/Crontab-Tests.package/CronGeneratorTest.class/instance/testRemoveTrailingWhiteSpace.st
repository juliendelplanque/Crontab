tests-helpers
testRemoveTrailingWhiteSpace
	| stream |
	stream := ReadWriteStream on: String new.
	stream << 'blabla  '.
	self assert: stream peekBack equals: Character space.
	visitor stream: stream.
	visitor removeTrailingWhiteSpace.
	self assert: stream peekBack equals: $a