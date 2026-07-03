toolbuilder
buildRemainingCharactersCounterTextWith: aBuilder

	^ aBuilder pluggableLabelSpec new
		model: self;
		label: #getRemainingCharactersLabel;
		frame: self layoutFrame;
		yourself