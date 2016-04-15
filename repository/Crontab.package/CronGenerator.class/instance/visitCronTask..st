visiting
visitCronTask: aCronTask
	aCronTask comment accept: self.
	self underlineComment: aCronTask comment content size.
	aCronTask frequency accept: self.
	aCronTask hasSubtasks
		ifFalse: [ 
			stream
				<< Character space;
				<< (aCronTask command
						ifNil: [ self error: 'No command set.' ]).
			aCronTask output accept: self. ].
	aCronTask subtasks
			ifNotNil: [ 
				aCronTask subtasks
					doWithIndex: [ :subtask :i |
						subtask accept: self.
						i = aCronTask subtasks size
							ifFalse: [ stream << self lineEnding ] ] ].
	stream
		<< self lineEnding