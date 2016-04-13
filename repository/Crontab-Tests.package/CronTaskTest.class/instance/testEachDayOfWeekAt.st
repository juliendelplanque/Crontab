tests-frequency
testEachDayOfWeekAt
	cronTask eachDayOfWeek: { 'Monday' . 'Tuesday' } at: '3:00pm' asTime.
	self assert: cronTask frequency minutes equals: 0.
	self assert: cronTask frequency hours equals: 15.
	self assert: cronTask frequency days isCronAlways.
	self assert: cronTask frequency months isCronAlways.
	self assert: cronTask frequency daysOfWeek equals: #(1 2).
	cronTask eachDayOfWeek: { 'Monday' . 'Tuesday' } at: (#('3:00pm' '4:00pm') collect: #asTime).
	self assert: cronTask hasSubtasks.
	self assert: cronTask subtasks size equals: 2.
	cronTask subtasks do: [ :subtask |
		self assert: subtask frequency minutes equals: 0.
		self assert: subtask frequency days isCronAlways.
		self assert: subtask frequency months isCronAlways.
		self assert: subtask frequency daysOfWeek equals: #(1 2). ].
	self assert: (cronTask subtasks anySatisfy: [ :any | any frequency hours = 15 ]).
	self assert: (cronTask subtasks anySatisfy: [ :any | any frequency hours = 16 ]).