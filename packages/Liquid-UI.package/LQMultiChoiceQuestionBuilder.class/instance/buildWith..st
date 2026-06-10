toolbuilder
buildWith: aBuilder
	^ aBuilder build: (aBuilder pluggablePanelSpec new
		model: self;
		children: #buildPanelChildren;
		yourself)