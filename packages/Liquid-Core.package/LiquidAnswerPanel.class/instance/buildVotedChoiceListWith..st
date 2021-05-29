accessing
buildVotedChoiceListWith: aBuilder

^ aBuilder pluggableListSpec new
	model: self;
	list: #votedChoiceList;
	frame: (0@0.6 corner: 1@1);
	yourself.