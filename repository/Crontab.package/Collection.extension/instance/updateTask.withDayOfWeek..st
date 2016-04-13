*Crontab
updateTask: aCronTask withDayOfWeek: aCollectionOfString
	aCronTask
		subtasks: (self collect: [ :time |
						| sub |
						sub := CronSubtask new
									task: aCronTask.
						time updateTask: sub withDayOfWeek: aCollectionOfString.
						sub ]).