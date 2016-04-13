*Crontab
updateMonthlyTask: aCronTask withDays: anIntegerOrACollectionOfIntegerOrInterval
	aCronTask
		subtasks: (self collect: [ :time |
						| sub |
						sub := CronSubtask new
									task: aCronTask.
						time
							updateMonthlyTask: aCronTask
							withDays: anIntegerOrACollectionOfIntegerOrInterval.
						sub ]).