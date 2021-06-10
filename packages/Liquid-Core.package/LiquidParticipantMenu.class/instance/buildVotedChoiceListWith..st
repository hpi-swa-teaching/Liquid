lists
buildVotedChoiceListWith: aBuilder

^ aBuilder pluggableListSpec new
	model: self;
	list: #votedChoiceList;
	frame: (LayoutFrame new
				topFraction: 0.6;
				bottomFraction: 1;
				leftFraction: 0.6;
				rightFraction: 1;
				yourself);
	yourself