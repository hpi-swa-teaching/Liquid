initialize
buildQuestionTitleTextWith: aBuilder

^ aBuilder pluggableTextSpec new
	model: self;
	getText: #getTitle;
	indicateUnacceptedChanges: false;
	readOnly: true;
	frame: (0.1@0.05 corner: 0.9@0.11);
	yourself.