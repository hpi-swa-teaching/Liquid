toolbuilder
buildAddPriorityQuestionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Add Prioritization Question';
		help: 'The new question will let the participants rank the voting options.';
		action: #addPriorityQuestion;
		frame: (LayoutFrame new
			topFraction: 0.92;
			leftFraction: 0.33;
			rightFraction: 0.66;
			bottomFraction: 1;
			yourself);
		yourself