visiting
visitCronTask: aCronTask
	stream
		<< 'newTask: [ :task |';
		<< self lineEnding;
		<< Character tab;
		<< Character tab;
		<< 'task';
		<< self lineEnding;
		<< Character tab;
		<< Character tab;
		<< Character tab.
	aCronTask comment accept: self.
	stream
		<< $;;
		<< self lineEnding;
		<< Character tab;
		<< Character tab;
		<< Character tab;
		<< 'command: ''';
		<< aCronTask command;
		<< ''';';
		<< self lineEnding;
		<< Character tab;
		<< Character tab;
		<< Character tab.
	aCronTask frequency accept: self.
	stream
		<< ' ]'