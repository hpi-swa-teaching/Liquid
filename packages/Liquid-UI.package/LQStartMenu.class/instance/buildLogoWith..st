toolbuilder
buildLogoWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #logoInCollection;
		color: Color red;
		minimumExtent: 100 @ 100;
		frame: (LayoutFrame new
			topFraction: 0;
			bottomFraction: 0.5;
			leftFraction: 0;
			rightFraction: 1)