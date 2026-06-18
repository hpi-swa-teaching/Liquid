toolbuilder
buildWarningTextBoxWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		readOnly: true;
		help: 'Shows a warning if the selected Poll has a low sample size.';
		indicateUnacceptedChanges: false;
		getText: #lowParticipationWarningText;
		yourself