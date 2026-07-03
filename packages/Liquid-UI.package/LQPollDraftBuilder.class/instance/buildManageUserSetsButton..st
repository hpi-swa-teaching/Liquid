toolbuilder
buildManageUserSetsButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Manage User Sets';
		action: #openManageUserSetsMenu;
		frame: self addManageUserSetsFrame;
		yourself