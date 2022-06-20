toolbuilder
buildSelectUserSetButtonWith: aBuilder

	^aBuilder pluggableButtonSpec new
		model: self;
		label: 'Select User Set';
		action: #selectUserSet;
		frame: (LayoutFrame new 
			topFraction: 0.83; 
			bottomFraction: 0.9; 
			leftFraction: 0.1; 
			rightFraction: 0.9)
		yourself.