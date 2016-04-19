frequency-printing
checkIsNotCronAlwaysForSelectors: anArrayOfSymbols for: aCronFrequency
	"Raise a CronNotPrintableUsingThisFormat error if any selectors in the array
	 performed on aCronFrequency returns a CronAlways object."
	(anArrayOfSymbols
		inject: false
		into: [ :bool :each |
			bool or: [ (aCronFrequency perform: each) isCronAlways ]
		]) ifTrue: [ CronNotPrintableUsingThisFormat signal ].