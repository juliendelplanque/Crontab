*Crontab
updateTask: aCronTask withDayOfWeek: aCollectionOfString
	aCronTask
		frequency: (CronFrequency new
						minutes: self minutes;
						hours: self hour24;
						daysOfWeek: (aCollectionOfString collect: [ :dayName | 
												(Date dayOfWeek: dayName asCamelCase) - 1 ]);
						yourself)