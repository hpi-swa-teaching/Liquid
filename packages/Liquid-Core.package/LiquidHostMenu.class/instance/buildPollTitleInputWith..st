input fields
buildPollTitleInputWith: aBuilder

^ aBuilder pluggableTextSpec new
	model: self;
	editText: #currentPollTitleInput: ;
	indicateUnacceptedChanges: false;
	frame: (LayoutFrame new
				topFraction: 0;
				bottomFraction: 0.2;
				leftFraction: 0.4;
				rightFraction: 0.6;
				yourself);
	yourself.