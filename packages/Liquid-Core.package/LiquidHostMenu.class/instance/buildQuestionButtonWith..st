buttons
buildQuestionButtonWith: aBuilder

^ aBuilder pluggableButtonSpec new
	model: self;
	label: 'Add Question';
	action: #addCurrentQuestion;
	frame: (LayoutFrame new
				topFraction: 0.25;
				bottomFraction: 0.35;
				leftFraction: 0;
				rightFraction: 0.4;
				yourself);
	yourself.