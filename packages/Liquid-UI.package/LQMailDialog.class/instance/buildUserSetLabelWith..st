toolbuilder
buildUserSetLabelWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: #userSetLabelText;
		model: self;
		enabled: false;
		frame: (LayoutFrame new 
			topFraction: 0.10; 
			bottomFraction: 0.15; 
			leftFraction: 0.01; 
			rightFraction: 0.24)