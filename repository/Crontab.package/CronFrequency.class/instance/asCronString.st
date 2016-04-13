converting
asCronString
	^ ({ minutes . hours . days . months . daysOfWeek } collect: #asCronString) joinUsing: ' '