toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggablePanelSpec new
		model: self;
		children: {
			self buildTitleInputWith: aBuilder.
			self buildMaxNumberOfCharactersInputWith: aBuilder.
			self buildMaxNumberOfCharactersLabelWith: aBuilder};
		yourself)