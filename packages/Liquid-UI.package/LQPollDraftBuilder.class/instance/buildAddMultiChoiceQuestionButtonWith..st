toolbuilder
buildAddMultiChoiceQuestionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Add Multiple Choice Question';
		help: 'Participants can vote for up to how many choices you allow them.';
		action: #addMultiChoiceQuestion;
		frame: self addMultiChoiceQuestionButtonFrame;
		yourself