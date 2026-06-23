toolbuilder
buildAddFreeTextQuestionButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Add Free Text Question';
		help: 'Participants can write their own answer.';
		action: #addFreeTextQuestion;
		frame: self addFreeTextQuestionButtonFrame;
		yourself