initialize-release
initialize

	super initialize.
	self answerText: ''.
	self model: self;
		
		frame: (0 @ 0 corner: 1 @ 1);
		 children: #getChildren