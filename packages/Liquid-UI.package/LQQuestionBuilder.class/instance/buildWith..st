toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggablePanelSpec new
			model: self;
			children: {
				self buildTitleInputWith: aBuilder.
				self buildChoicesInputWith: aBuilder.
				self buildMaxNumberOfChoicesInputWith: aBuilder.
				self buildMaxNumberOfChoicesLabelWith: aBuilder};
			yourself)