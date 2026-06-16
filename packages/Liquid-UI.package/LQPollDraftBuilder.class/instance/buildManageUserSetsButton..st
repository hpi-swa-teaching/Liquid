toolbuilder
buildManageUserSetsButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Manage User Sets';
		action: #openManageUserSetsMenu;
		frame: (LayoutFrame new
			topFraction: 0.85; 
			leftFraction: 0; 
			rightFraction: 0.25; 
			bottomFraction: 0.925;
    			yourself);
		yourself