initialize
buildVotedChoiceListWith: aBuilder

^ aBuilder pluggableTextSpec new
	model: self;
	readOnly: true;
	getText: #getResults;
	frame: (LayoutFrame new
				topFraction: 0;
				bottomFraction: 1;
				leftFraction: 0;
				rightFraction: 1;
				yourself);
	yourself