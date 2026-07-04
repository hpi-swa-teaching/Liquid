toolbuilder
buildKahootLobbyCodeWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		readOnly: true;
		indicateUnacceptedChanges: false;
		getText: #kahootLobbyCodeString;
		yourself
