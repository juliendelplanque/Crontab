visiting
visitCronTab: aCronTab
	stream
		<< '(CronTab named: ''';
		<< aCronTab crontabName;
		<< ''')';
		<< self lineEnding.
	aCronTab commentsAndTasks
		doWithIndex: [ :commentOrTask :i |
			stream << Character tab.
			commentOrTask accept: self.
			stream << $;.
			i = aCronTab commentsAndTasks size
				ifFalse: [ stream << self lineEnding ] ].
	stream
		<< self lineEnding;
		<< Character tab;
		<< 'generate'.
	^ stream contents