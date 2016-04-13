*Crontab
addToCronTab: aCronTab
	| task |
	self argumentCount ~= 1
		ifTrue: [ self error: 'The block must take 1 argument.' ].
	task := CronTask new.
	self value: task.
	aCronTab addTask: task