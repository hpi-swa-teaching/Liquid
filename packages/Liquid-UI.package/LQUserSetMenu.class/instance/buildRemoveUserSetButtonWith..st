toolbuilder
buildRemoveUserSetButtonWith: aBuilder

	^aBuilder pluggableButtonSpec new
		model: self;
		label: 'Remove User Set';
		action: #removeSelectedUserSet;
		frame: (LayoutFrame new 
			topFraction: 0.81; 
			bottomFraction: 0.89; 
			leftFraction: 0.1; 
			rightFraction: 0.9)
		yourself.