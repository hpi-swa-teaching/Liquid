toolbuilder
buildPreviousQuestionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Previous';
		help: 'Return to the previous question of the poll';
		enabled: #previousButtonEnabled;
		action: #previousQuestion;
		frame: (LayoutFrame new
					topFraction: 0.81;
					leftFraction: 0.54;
					rightFraction: 0.69;
					bottomFraction: 0.91;
					yourself);
		yourself