toolbuilder
buildSetDeadlineButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Set Deadline';
		help: 'Set or clear the poll deadline.';
		action: #openDeadlineMenu;
		frame: self setDeadlineButtonFrame;
		yourself