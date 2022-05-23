toolbuilder
buildUserSetListViewWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #userSets;
		getIndex: #choiceSelected;
		setIndex: #choiceSelected:;
		frame: (LayoutFrame new 
			topFraction: 0.1; 
			bottomFraction: 0.8; 
			leftFraction: 0.1; 
			rightFraction: 0.9);
		yourself
		