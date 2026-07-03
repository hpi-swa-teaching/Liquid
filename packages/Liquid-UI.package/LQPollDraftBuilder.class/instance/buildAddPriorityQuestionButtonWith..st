toolbuilder
buildAddPriorityQuestionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Add Prioritization Question';
		help: 'Participants rank the choices. The evaluation awards points based on the ranking, giving the most points to the #1 choice.';
		action: #addPriorityQuestion;
		frame: self addPriorityQuestionButtonFrame;
		yourself