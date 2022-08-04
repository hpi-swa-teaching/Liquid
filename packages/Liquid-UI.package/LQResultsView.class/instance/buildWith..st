toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Poll results for ', self poll pollDraft title;
		extent: self extent;
		children: {self buildResultsTextBoxWith: aBuilder};
		yourself)