toolbuilder
buildIdCopyButtonWith: aBuilder 
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Copy Poll-Link to Clipboard';
		 action: #copyPollLink;
		 yourself
		