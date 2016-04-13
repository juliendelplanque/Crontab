visiting
visitCronTask: aCronTask
	^ (aCronTask comment accept: self) ,
		(self underlineComment: aCronTask comment content size) ,
		(aCronTask frequency accept: self) ,
		(aCronTask hasSubtasks
			ifFalse: [ 
				(' ' ,
				(aCronTask command
					ifNil: [ self error: 'No command set.' ]) ,
				(aCronTask output accept: self)) trimRight ]
			ifTrue: [ '' ]) ,
		(aCronTask subtasks
			ifNil: [ '' ]
			ifNotNil: [ 
				(aCronTask subtasks
					collect: [ :subtask | (subtask accept: self) trimRight ])
						joinUsing: self lineEnding ]) ,
		self lineEnding