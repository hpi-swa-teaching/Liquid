toolbuilder
buildAddQuestionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Add Question';
		help: 'Add a Kahoot-style question with answer options.';
		action: #addQuestion;
		yourself
