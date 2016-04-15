adding
addTask: aCronTask
	self assert: aCronTask class = CronTask.
	commentsAndTasks add: aCronTask