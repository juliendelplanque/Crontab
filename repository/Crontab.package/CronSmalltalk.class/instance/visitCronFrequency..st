as yet unclassified
visitCronFrequency: aCronFrequency
	^ 'minutes: {1} hours: {2} days: {3} months: {4} daysOfWeek: {5}'
			format: ({ aCronFrequency minutes .
						aCronFrequency hours .
						aCronFrequency days .
						aCronFrequency months .
						aCronFrequency daysOfWeek } collect: #asCronSmalltalk)