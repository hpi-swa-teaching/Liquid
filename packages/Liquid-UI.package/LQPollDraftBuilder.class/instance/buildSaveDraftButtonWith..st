toolbuilder
buildSaveDraftButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Save Draft';
		help: 'Save the poll for later.';
		action: #saveDraft;
		frame: (LayoutFrame new
			topFraction: 0.925;
			leftFraction: 0.72;
			rightFraction: 0.86;
			bottomFraction: 1;
			yourself);
		yourself