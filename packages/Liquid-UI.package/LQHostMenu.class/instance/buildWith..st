toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Liquid - Host';
		extent: 400 @ 100;
		children: {
			self buildClosePollButtonWith: aBuilder.
			self buildShowResultsButtonWith: aBuilder.
			self buildCreatePollButtonWith: aBuilder.
			self buildVisualizeResultsButtonWith: aBuilder};
		yourself)