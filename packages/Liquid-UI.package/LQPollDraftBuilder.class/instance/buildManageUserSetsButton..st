toolbuilder
buildManageUserSetsButton: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Manage User Sets';
		action: #manageUserSets;
		frame: self addManageUserSetsFrame;
		yourself