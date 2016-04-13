*Crontab
updateEveryDayTask: aCronTask
	aCronTask
		subtasks: (self collect: [ :time |
						| sub |
						sub := CronSubtask new
									task: aCronTask.
						time updateEveryDayTask: sub.
						sub ]).