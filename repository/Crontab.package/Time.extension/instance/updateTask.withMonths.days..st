*Crontab
updateTask: aCronTask withMonths: aCollectionOfString days: anIntegerOrACollectionOfInteger
	aCronTask frequency: (CronFrequency new
									minutes: self minutes;
									hours: self hour24;
									days: anIntegerOrACollectionOfInteger;
									months: (aCollectionOfString collect: [ :monthName |
													Month indexOfMonth: monthName ]);
									yourself)