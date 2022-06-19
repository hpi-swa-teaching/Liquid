toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Welcome to Liquid';
		extent: 500 @ 400;
		children: {self buildEnterHostButtonWith: aBuilder. self buildEnterParticipantButtonWith: aBuilder. self buildStopServerButtonWith: aBuilder};
		yourself)