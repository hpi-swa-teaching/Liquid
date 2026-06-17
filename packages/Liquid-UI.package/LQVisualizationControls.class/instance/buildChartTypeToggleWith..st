toolbuilder
buildChartTypeToggleWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: #chartTypeToggleLabel;
		help: 'Switch between the available result visualizations';
		action: #toggleChartType;
		enabled: #chartTypeToggleEnabled;
		frame: (LayoutFrame new
			topFraction: 0;
			bottomFraction: 0 offset: 30;
			leftFraction: 0.25;
			rightFraction: 1;
			yourself);
		yourself