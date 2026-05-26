toolbuilder
buildRemoveQuestionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Remove Question';
		help: 'Remove the currently selected question from this Kahoot.';
		action: #removeQuestion;
		yourself
