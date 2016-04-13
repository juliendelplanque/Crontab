*Crontab
updateTask: aCronTask withMonths: aCollectionOfString days: anIntegerOrACollectionOfInteger
	aCronTask
		subtasks: (self collect: [ :time |
						| sub |
						sub := CronSubtask new
									task: aCronTask.
						time updateTask: sub withMonths: aCollectionOfString days: anIntegerOrACollectionOfInteger.
						sub ]).