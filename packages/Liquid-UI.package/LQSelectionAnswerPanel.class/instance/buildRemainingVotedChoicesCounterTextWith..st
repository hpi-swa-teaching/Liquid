toolbuilder
buildRemainingVotedChoicesCounterTextWith: aBuilder

	^ aBuilder pluggableLabelSpec new
		model: self;
		label: #getRemainingVotedChoices;
		frame: self layoutFrame;
		yourself