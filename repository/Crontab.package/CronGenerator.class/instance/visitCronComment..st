visiting
visitCronComment: aCronComment
	stream
		<< '# ';
		<< aCronComment content;
		<< self lineEnding