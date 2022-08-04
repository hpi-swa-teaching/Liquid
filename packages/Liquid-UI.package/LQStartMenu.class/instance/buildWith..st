toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Welcome to Liquid';
		extent: self extent;
		children: {self buildEnterHostButtonWith: aBuilder. self buildEnterParticipantButtonWith: aBuilder. self buildStopServerButtonWith: aBuilder};
		yourself)