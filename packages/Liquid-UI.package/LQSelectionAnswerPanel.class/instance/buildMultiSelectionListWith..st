toolbuilder
buildMultiSelectionListWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #choiceDescriptions;
		getIndex: #choiceSelected;
		setIndex: #choiceSelected:;
		getSelectionList: #choiceAt:;
		setSelectionList: #choiceAt:put:;
		frame: (0.15 @ 0.2 corner: 0.9 @ 0.8);
		yourself