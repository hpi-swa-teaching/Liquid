buttons
buildVoteChoiceButtonWith: aBuilder

^ aBuilder pluggableButtonSpec new
	model: self;
	label: 'Vote choice';
	action: #voteChoice;
	frame: (LayoutFrame new
				topFraction: 0.5;
				bottomFraction: 0.6;
				leftFraction: 0.6;
				rightFraction: 1;
				yourself);
	yourself