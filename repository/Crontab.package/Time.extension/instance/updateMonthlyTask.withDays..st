*Crontab
updateMonthlyTask: aCronTask withDays: anIntegerOrACollectionOfIntegerOrInterval
	aCronTask frequency: (CronFrequency new
									minutes: self minutes;
									hours: self hour24;
									days: anIntegerOrACollectionOfIntegerOrInterval;
									yourself)