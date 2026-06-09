toolbuilder
buildPreviousQuestionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Previous';
		help: 'Return to the previous question of the poll';
		enabled: #previousButtonEnabled;
		action: #previousQuestion;
		frame: (LayoutFrame new
			topFraction: 0.85;
			leftFraction: 0.65;
			rightFraction: 0.80;
			bottomFraction: 0.95;
			yourself);
		yourself