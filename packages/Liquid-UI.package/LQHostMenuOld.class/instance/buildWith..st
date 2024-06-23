toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Liquid - Host';
		extent: self extent;
		children: {
			self buildUserSetButtonWith: aBuilder.
			self buildPollInteractionButtonWith: aBuilder.
			self buildShowResultsButtonWith: aBuilder.
			self buildCreatePollButtonWith: aBuilder.
			self buildVisualizeResultsButtonWith: aBuilder};
		yourself)