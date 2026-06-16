toolbuilder
buildShowAvailableGroupsButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Add Group Exclusion';
		action: #addGroupExclusion;
		frame: (LayoutFrame new
			topFraction: 0.925;
			leftFraction: 0;
			rightFraction: 0.25;
			bottomFraction: 1;
			yourself);
		yourself