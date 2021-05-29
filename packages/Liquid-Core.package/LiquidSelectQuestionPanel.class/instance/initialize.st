as yet unclassified
initialize
	selectListener := BlockClosure new.
	self model: self;
		frame: (0@0 corner: 0.4@1);
		children: #getChildren