initialize-release
initialize

	super initialize.
	self selectedChoices: OrderedCollection new.
	self
		model: self;
		frame: (0 @ 0 corner: 1 @ 1);
		children: #getChildren