toolbuilder
buildShowAvailableGroupsButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Add Group Exclusion';
		action: #addGroupExclusion;
		frame: (self leftButtonFrameForIndex: 5);
		yourself