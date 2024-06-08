toolbuilder
buildIDTextBoxWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		readOnly: true;
		indicateUnacceptedChanges: false;
		getText: #pollId;
		yourself