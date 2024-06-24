toolbuilder
buildIDTextBoxWith: aBuilder 
	^ aBuilder pluggableTextSpec new model: self;
		 readOnly: true;
		 indicateUnacceptedChanges: false;
		 getText: #pollIDString;
		 yourself
		