toolbuilder
buildAddFreeTextQuestionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Add Free Text Question';
		help: 'Participants can write their own answer.';
		action: #addFreeTextQuestion;
		frame: (LayoutFrame new
			topFraction: 0.92;
			leftFraction: 0.33;
			rightFraction: 0.66;
			bottomFraction: 1;
			yourself);
		yourself