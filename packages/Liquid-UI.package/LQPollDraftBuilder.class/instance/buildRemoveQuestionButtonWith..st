toolbuilder
buildRemoveQuestionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Remove Question';
		help: 'Remove the currently selected question from your poll.';
		action: #removeQuestion;
		frame: self removeQuestionButtonFrame;
		yourself