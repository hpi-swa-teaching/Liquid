as yet unclassified
buildMultiChoiceListWith: aBuilder

^ aBuilder pluggableMultiSelectionListSpec new
	model: self;
	list: #choiceList;
	getIndex: #choiceSelected;
	setIndex: #choiceSelected:;
	getSelectionList: #choiceAt:;
	setSelectionList: #choiceAt:put:;
	frame: (0.3@0 corner: 0.7@0.5);
	"for frame: height dependent on amount of choices"
	yourself.