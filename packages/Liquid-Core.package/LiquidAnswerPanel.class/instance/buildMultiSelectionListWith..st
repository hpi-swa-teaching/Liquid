initialize
buildMultiSelectionListWith: aBuilder

^ aBuilder pluggableMultiSelectionListSpec new
	model: self;
	list: #choiceList;
	getIndex: #choiceSelected;
	setIndex: #choiceSelected:;
	getSelectionList: #choiceAt:;
	setSelectionList: #choiceAt:put:;
	frame: (0.1@0.2 corner: 0.9@0.8);
	yourself.