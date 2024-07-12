toolbuilder
buildManageUserSetsButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Manage User Sets';
		action: #openManageUserSetsMenu;
		frame: (LayoutFrame new
			topFraction: 0.92;
			leftFraction: 0;
			rightFraction: 0.32;
			bottomFraction: 1;
			yourself);
		yourself