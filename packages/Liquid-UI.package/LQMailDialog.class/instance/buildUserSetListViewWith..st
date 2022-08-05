toolbuilder
buildUserSetListViewWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #userSetData;
		frame: (LayoutFrame new 
			topFraction: 0.15; 
			bottomFraction: 0.75; 
			leftFraction: 0.01; 
			rightFraction: 0.24;
			yourself);
		yourself