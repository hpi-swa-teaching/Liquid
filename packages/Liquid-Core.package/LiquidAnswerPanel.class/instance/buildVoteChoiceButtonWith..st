accessing
buildVoteChoiceButtonWith: aBuilder

^ aBuilder pluggableButtonSpec new
	model: self;
	label: 'Vote choice';
	action: #voteChoice;
	frame: (0.6@0.5 corner: 1@0.5);
	yourself.