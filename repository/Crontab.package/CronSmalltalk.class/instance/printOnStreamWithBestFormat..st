frequency-printing
printOnStreamWithBestFormat: aCronFrequency
	| printers |
	printers := (((Pragma allNamed: #frequencyFormat: in: CronSmalltalk)
						sorted: [ :prag1 : prag2 |
							prag1 arguments first < prag1 arguments first ])
						collect: #selector).
	(printers anySatisfy: [ :any |
		[ self perform: any with: aCronFrequency ]
			on: CronNotPrintableUsingThisFormat
			do: [ false ] ])
		ifFalse: [ self printMinutesHoursDaysMonthsDaysOfWeekOnStream: aCronFrequency ]