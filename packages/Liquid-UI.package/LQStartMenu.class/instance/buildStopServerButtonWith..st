toolbuilder
buildStopServerButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Stop Liquid Server';
		help: 'Stops the liquid server which allows access to your local polls';
		action: #stopServer;
		frame: (LayoutFrame new
			topFraction: 0.66;
			bottomFraction: 1;
			leftFraction: 0;
			rightFraction: 1;
			yourself);
		yourself