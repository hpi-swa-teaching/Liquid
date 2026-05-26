toolbuilder
buildCreateKahootButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Create Kahoot';
		help: 'Create a Kahoot-style quiz and add questions with answer options.';
		action: #createKahoot;
		yourself
