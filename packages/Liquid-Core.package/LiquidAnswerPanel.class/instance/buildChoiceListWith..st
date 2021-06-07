as yet unclassified
buildChoiceListWith: aBuilder

^ aBuilder pluggableListSpec new
	model: self;
	list: #choiceList;
	getSelected: #selectedChoice;
	setSelected: #selectedChoice:;
	frame: (0@0 corner: 1@0.5);
	yourself.