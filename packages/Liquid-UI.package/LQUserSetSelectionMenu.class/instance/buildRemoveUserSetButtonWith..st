toolbuilder
buildRemoveUserSetButtonWith: aBuilder

	^aBuilder pluggableButtonSpec new
		model: self;
		label: 'Remove User Set';
		action: #removeSelectedUserSet;
		frame: (LayoutFrame new 
			topFraction: 0.67; 
			bottomFraction: 0.74; 
			leftFraction: 0.1; 
			rightFraction: 0.9)
		yourself.