initialize
buildQuestionListWith: aBuilder

^ aBuilder pluggableListSpec new
	model: self;
	list: #questionList;
	getSelected: #selectedItemQuestion;
	setSelected: #selectedItemQuestion:;
	frame: (LayoutFrame new
				topFraction: 0.4;
				bottomFraction: 1;
				leftFraction: 0;
				rightFraction: 0.4;
				yourself);
	yourself.