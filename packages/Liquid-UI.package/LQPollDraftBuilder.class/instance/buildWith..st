toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Liquid - Create a Poll';
		extent: 500 @ 400;
		children: {
			self buildTitleInputWith: aBuilder.
			self buildChoicesInputWith: aBuilder.
			self buildRunPollButtonWith: aBuilder.
			self buildMaxNumberOfChoicesInputWith: aBuilder.
			self buildMaxNumberOfChoicesLabelWith: aBuilder.
			self buildAddQuestionButtonWith: aBuilder} yourself)