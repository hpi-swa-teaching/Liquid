initialize
buildRemainingVotedChoicesCounterTextWith: aBuilder

^ aBuilder pluggableTextSpec new
	model: self;
	getText: #getRemainingVotedChoices;
	indicateUnacceptedChanges: false;
	readOnly: true;
	frame: (0.1@0.81 corner: 0.38@0.87);
	yourself.