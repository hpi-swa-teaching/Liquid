toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggablePanelSpec new
			model: self;
			children: {
				self buildTitleInputWith: aBuilder.
				self buildChoicesInputWith: aBuilder.
				self buildPriorityExplanationLabelWith: aBuilder.};
			yourself)