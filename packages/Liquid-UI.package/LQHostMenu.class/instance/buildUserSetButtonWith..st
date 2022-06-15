toolbuilder
buildUserSetButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Manage User Sets';
		help: 'Upload a Userfile to restrict access to your polls';
		action: #openUserSetMenu;
		frame: (LayoutFrame new
			topFraction: 0.35;
			bottomFraction: 0.65;
			leftFraction: 0.35;
			rightFraction: 0.65;
			yourself);
		yourself