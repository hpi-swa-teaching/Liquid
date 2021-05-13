lists
buildAnswerListWith: aBuilder

^ aBuilder pluggableListSpec new
	model: self;
	list: #answerList;
	getSelected: #selectedItemAnswer;
	setSelected: #selectedItemAnswer:;
	frame: (LayoutFrame new
				topFraction: 0.4;
				bottomFraction: 1;
				leftFraction: 0.6;
				rightFraction: 1;
				yourself);
	yourself.