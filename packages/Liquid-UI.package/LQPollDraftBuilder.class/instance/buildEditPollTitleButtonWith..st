toolbuilder
buildEditPollTitleButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Edit name';
		action: #editPollTitle;
		yourself