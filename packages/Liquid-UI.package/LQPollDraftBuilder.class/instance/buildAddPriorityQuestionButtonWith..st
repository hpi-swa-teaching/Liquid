toolbuilder
buildAddPriorityQuestionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Add Prioritization Question';
		help: 'Participants rank the choices. The evaluation awards points based on the ranking, giving the most points to the #1 choice.' ;
		action: #addPriorityQuestion;
		frame: (LayoutFrame new
			topFraction: 0.92;
			leftFraction: 0.33;
			rightFraction: 0.66;
			bottomFraction: 1;
			yourself);
		yourself