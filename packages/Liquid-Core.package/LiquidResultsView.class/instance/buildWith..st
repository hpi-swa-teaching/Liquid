as yet unclassified
buildWith: aBuilder 
	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Poll results for ', self poll pollDraft title;
		extent: 500@400;
		children: { self buildResultsTextBoxWith: aBuilder
						};
		yourself)