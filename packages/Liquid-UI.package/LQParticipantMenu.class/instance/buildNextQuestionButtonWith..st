toolbuilder
buildNextQuestionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: #nextButtonLabel;
		help: 'Answer the next question of the poll';
		action: #nextQuestionOrSend;
		frame: (LayoutFrame new
						topFraction: 0.81; leftFraction: 0.70; rightFraction: 0.90; bottomFraction: 0.91) yourself