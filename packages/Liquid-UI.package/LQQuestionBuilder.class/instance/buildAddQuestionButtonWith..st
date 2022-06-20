toolbuilder
buildAddQuestionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Add Question';
		help: 'Add a new question to your poll.';
		action: #addQuestion;
		frame: (LayoutFrame fractions: (0 @ 1 extent: 1 @ 0) offsets: (0 @ -60 extent: 0 @ 30))