toolbuilder
buildParticipantsTitleWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #participantsTitleString;
		readOnly: true;
		indicateUnacceptedChanges: false;
		yourself
