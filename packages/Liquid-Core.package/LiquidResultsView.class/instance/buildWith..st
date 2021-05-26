as yet unclassified
buildWith: aBuilder 
	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Poll results';
		extent: 500@400;
		children: { self buildResultTextBoxWith: aBuilder
						};
		yourself)