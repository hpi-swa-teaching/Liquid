toolbuilder
buildSaveDraftButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Save Draft';
		help: 'Save the poll for later.';
		action: #saveDraft;
		frame: (LayoutFrame new
			topFraction: 0.92;
			leftFraction: 0.33;
			rightFraction: 0.66;
			bottomFraction: 1;
			yourself);
		yourself