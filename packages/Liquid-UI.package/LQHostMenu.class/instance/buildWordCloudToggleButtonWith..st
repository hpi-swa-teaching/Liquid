toolbuilder
buildWordCloudToggleButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		enabled: #wordCloudToggleEnabled;
		label: #wordCloudToggleLabel;
		action: #toggleWordCloudVisualization;
		yourself