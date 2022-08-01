toolbuilder
buildAddUserSetFileButtonWith: aBuilder

	^aBuilder pluggableButtonSpec new
		model: self;
		label: 'Add User Set';
		action: #openUserSetFileDialog;
		frame: (LayoutFrame new 
			topFraction: 0.75; 
			bottomFraction: 0.82; 
			leftFraction: 0.1; 
			rightFraction: 0.9;
			yourself);
		yourself