tests
testComment
	self parse: '#a comment' rule: #comment.
	self parse: '# a comment' rule: #comment.
	self parse: '#' rule: #comment