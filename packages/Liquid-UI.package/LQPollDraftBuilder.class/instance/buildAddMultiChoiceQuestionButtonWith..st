toolbuilder
buildAddMultiChoiceQuestionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Add Multiple Choice Question';
		help: 'Participants can vote for up to how many choices you allow them.';
		action: #addMultiChoiceQuestion;
		frame: (LayoutFrame new
			topFraction: 0.92;
			leftFraction: 0.33;
			rightFraction: 0.66;
			bottomFraction: 1;
			yourself);
		yourself