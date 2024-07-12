toolbuilder
buildQuestionListWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #questionList;
		getIndex: #getIndex;
		setIndex: #setIndex:;
		frame: (LayoutFrame new
			topFraction: 0;
			bottomFraction: 1;
			leftFraction: 0;
			rightFraction: 0.25;
			yourself);
		yourself