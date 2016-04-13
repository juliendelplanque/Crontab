tests-frequency
testEachMonthTheAt
	cronTask eachMonth: { 'January' . 'October' } the: 15 at: '5:00' asTime.
	self assert: cronTask frequency minutes equals: 0.
	self assert: cronTask frequency hours equals: 5.
	self assert: cronTask frequency days equals: 15.
	self assert: cronTask frequency months equals: { 1 . 10 }.
	self assert: cronTask frequency daysOfWeek isCronAlways.
	
	cronTask eachMonth: { 'January' . 'October' } the: { 15 . 17 } at: '5:00' asTime.
	self assert: cronTask frequency minutes equals: 0.
	self assert: cronTask frequency hours equals: 5.
	self assert: cronTask frequency days equals: { 15 . 17 }.
	self assert: cronTask frequency months equals: { 1 . 10 }.
	self assert: cronTask frequency daysOfWeek isCronAlways.
	
	cronTask eachMonth: { 'January' . 'October' } the: 15 at: { '5:00' asTime . '15:00' asTime }.
	self assert: cronTask hasSubtasks.
	self assert: cronTask subtasks size equals: 2.
	cronTask subtasks do: [ :sub |
		self assert: sub frequency days equals: 15.
		self assert: sub frequency months equals: { 1 . 10 }.
		self assert: sub frequency daysOfWeek isCronAlways. ].
	self assert: (cronTask subtasks anySatisfy: [ :any | any frequency hours = 5 and: [ any frequency minutes = 0 ] ]).
	self assert: (cronTask subtasks anySatisfy: [ :any | any frequency hours = 15 and: [ any frequency minutes = 0 ] ]).