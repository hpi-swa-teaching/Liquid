toolbuilder
buildIdCopyButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		enabled: #pollSelected;
		label: 'Copy Poll-Link to Clipboard';
		action: #copyPollLink;
		yourself