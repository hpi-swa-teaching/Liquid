toolbuilder
buildChoiceListWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #choiceList;
		getIndex: #selectedChoiceIndex;
		setIndex: #selectedChoiceIndex:;
		frame: (LayoutFrame fractions: (0.05 @ 0.28 extent: 0.9 @ 0.5));
		yourself
