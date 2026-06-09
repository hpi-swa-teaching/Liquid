toolbuilder
buildEditPollTitleButtonWith: aBuilder
	^ (aBuilder pluggableButtonSpec new
		model: self;
		label: 'Edit name';
		action: #editPollTitle;
		frame: (LayoutFrame fractions: (0.76 @ 0 extent: 0.24 @ 1));
		yourself)