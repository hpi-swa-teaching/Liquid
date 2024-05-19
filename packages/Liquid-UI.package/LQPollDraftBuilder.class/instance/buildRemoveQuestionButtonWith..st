toolbuilder
buildRemoveQuestionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Remove Question';
		help: 'Remove the currently selected question from your poll.';
		action: #removeQuestion;
		frame: (LayoutFrame new
					topFraction: 0.92;
					leftFraction: 0.33;
					rightFraction: 0.66;
					bottomFraction: 1;
					yourself);
		yourself