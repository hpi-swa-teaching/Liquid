lists
buildChoiceListWith: aBuilder

^ aBuilder pluggableListSpec new
	model: self;
	list: #choiceList;
	getSelected: #selectedItemChoice;
	setSelected: #selectedItemChoice:;
	frame: (LayoutFrame new
				topFraction: 0;
				bottomFraction: 0.5;
				leftFraction: 0.6;
				rightFraction: 1;
				yourself);
	yourself.