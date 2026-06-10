modifying
toggleWordCloudVisualization

	self currentVisualizationControls toggleWordCloud.
	self changed: #wordCloudToggleLabel.
	self changed: #wordCloudToggleEnabled