visiting
visitCronSubtask: aCronSubtask
	aCronSubtask frequency accept: self.
	stream
		<< Character space;
		<< aCronSubtask command;
		<< Character space.
	aCronSubtask output accept: self.
	self removeTrailingWhiteSpace