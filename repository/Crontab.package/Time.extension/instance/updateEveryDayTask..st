*Crontab
updateEveryDayTask: aCronTask
	aCronTask frequency: (CronFrequency new
									minutes: self minutes;
									hours: self hour24;
									yourself)