toolbuilder
buildAddQuestionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Add Question';
		help: 'Add a new question to your poll.';
		action: #addQuestion;
		frame: (LayoutFrame new
					topFraction: 0.92;
					leftFraction: 0.33;
					rightFraction: 0.66;
					bottomFraction: 1;
					yourself);
		yourself