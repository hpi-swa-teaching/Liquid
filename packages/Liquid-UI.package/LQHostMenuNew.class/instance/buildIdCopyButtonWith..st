toolbuilder
buildIdCopyButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Copy Poll-ID to Clipboard';
		action: #copyPollId;
		yourself