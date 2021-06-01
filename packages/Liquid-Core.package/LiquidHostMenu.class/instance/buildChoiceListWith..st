lists
buildChoiceListWith: aBuilder

^ aBuilder pluggableListSpec new
	model: self;
	list: #choiceList;
	getSelected: #selectedItemChoice;
	setSelected: #selectedItemChoice:;
	frame: (LayoutFrame new
				topFraction: 0.4;
				bottomFraction: 1;
				leftFraction: 0.6;
				rightFraction: 1;
				yourself);
	yourself.