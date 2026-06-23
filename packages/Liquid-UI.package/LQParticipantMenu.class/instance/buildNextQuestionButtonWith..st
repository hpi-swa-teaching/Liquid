toolbuilder
buildNextQuestionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: #nextButtonLabel;
		help: 'Answer the next question of the poll';
		action: #nextQuestionOrSend;
		frame: (LayoutFrame new
			topFraction: 0.85;
			leftFraction: 0.80;
			rightFraction: 0.95;
			bottomFraction: 0.95;
			yourself);
		yourself