buttons
buildAnswerButtonWith: aBuilder

^ aBuilder pluggableButtonSpec new
	model: self;
	label: 'Add Answer';
	action: #addCurrentAnswer;
	frame: (LayoutFrame new
				topFraction: 0.25;
				bottomFraction: 0.35;
				leftFraction: 0.6;
				rightFraction: 1;
				yourself);
	yourself.