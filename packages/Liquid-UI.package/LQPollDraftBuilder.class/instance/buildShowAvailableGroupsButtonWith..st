toolbuilder
buildShowAvailableGroupsButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Add Group Exclusion';
		action: #addGroupExclusion;
		frame: (LayoutFrame new
			topFraction: 0;
			leftFraction: 0;
			rightFraction: 1;
			bottomFraction: 1;
			yourself);
		yourself