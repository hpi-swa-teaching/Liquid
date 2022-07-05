toolbuilder
buildReplacementListViewWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #replacementList;
		setIndex: #replacementSelectedIndex:;
		frame: (LayoutFrame new 
			topFraction: 0.76; 
			bottomFraction: 0.99;
			leftFraction: 0.01; 
			rightFraction: 0.24)
		yourself