toolbuilder
buildGroupFilterWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #groupFilterLabels;
		getIndex: #groupFilterIndex;
		setIndex: #toggleGroupAt:;
		frame: (LayoutFrame new
			topFraction: 0.7; bottomFraction: 1;
			leftFraction: 0; rightFraction: 0.25; yourself);
		yourself