toolbuilder
buildWarningTextBoxWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		readOnly: true;
		indicateUnacceptedChanges: false;
		getText: #lowParticipationWarningText;
		yourself