as yet unclassified
buildWith: aBuilder 
	builder := aBuilder.
	window := aBuilder build: (aBuilder pluggableWindowSpec new model: self;
					 label: 'Build a new Poll!';
					 extent: 500 @ 100;
					 children: {self buildTitleInputWith: aBuilder. self buildQuestionListWith: aBuilder. self buildAddQuestionButtonWith: aBuilder. self buildRunPollButtonWith: aBuilder} yourself).
	^ window