tests-frequency
testEveryDayAt
	cronTask
		everyDayAt: '15:00' asTime.
	self assert: cronTask frequency minutes equals: 0.
	self assert: cronTask frequency hours equals: 15.
	self assert: cronTask frequency days isCronAlways.
	self assert: cronTask frequency months isCronAlways.
	self assert: cronTask frequency daysOfWeek isCronAlways.
	
	cronTask
		everyDayAt: { '15:00' asTime . '16:10' asTime }.
	self assert: cronTask hasSubtasks.
	self assert: cronTask subtasks size equals: 2.
	cronTask subtasks do: [ :sub |
		self assert: sub frequency days isCronAlways.
		self assert: sub frequency months isCronAlways.
		self assert: sub frequency daysOfWeek isCronAlways. ].
	self assert: (cronTask subtasks anySatisfy: [ :any | any frequency hours = 15 and: [ any frequency minutes = 0 ] ]).
	self assert: (cronTask subtasks anySatisfy: [ :any | any frequency hours = 16 and: [ any frequency minutes = 10 ] ]).