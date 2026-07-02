toolbuilder
buildWith: aBuilder

	self builder: aBuilder.
	^ aBuilder build: (aBuilder pluggablePanelSpec new
		model: self;
		children: #buildPanelChildren;
		yourself)