visiting
visitCronTab: aCronTab
	stream
		<< '# ';
		<< aCronTab crontabName;
		<< self lineEnding.
	aCronTab commentsAndTasks
		doWithIndex: [ :aCommentOrATask :i | 
			aCommentOrATask accept: self.
			i = aCronTab commentsAndTasks size
				ifFalse: [ stream << self lineEnding ] ].
	^ stream contents