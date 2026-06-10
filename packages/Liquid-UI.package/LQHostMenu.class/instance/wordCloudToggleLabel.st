accessing
wordCloudToggleLabel

	^ LQVisualizationControls showWordCloud
		ifTrue: ['Textliste']
		ifFalse: ['Word Cloud']