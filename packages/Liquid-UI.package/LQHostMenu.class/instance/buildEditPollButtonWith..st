toolbuilder
buildEditPollButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Edit Poll';
		enabled: #editPollButtonEnabled;
		help: 'Edit the questions of the currently selected poll';
		action: #editPoll;
		yourself