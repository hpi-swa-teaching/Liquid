accessing
initialize
	answer := LiquidSingleChoiceAnswer new.
	question := LiquidSingleChoiceQuestion new.
	self model: self;
		frame: (0.6@0 corner: 1@1);
		children: #getChildren