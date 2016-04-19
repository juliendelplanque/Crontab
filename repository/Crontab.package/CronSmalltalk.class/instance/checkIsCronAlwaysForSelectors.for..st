frequency-printing
checkIsCronAlwaysForSelectors: anArrayOfSymbols for: aCronFrequency
	"Raise a CronNotPrintableUsingThisFormat error if all selectors in the array
	 performed on aCronFrequency do not return a CronAlways object."
	(anArrayOfSymbols
		inject: true
		into: [ :bool :each |
			bool and: [ (aCronFrequency perform: each) isCronAlways ]
		]) ifFalse: [ CronNotPrintableUsingThisFormat signal ].