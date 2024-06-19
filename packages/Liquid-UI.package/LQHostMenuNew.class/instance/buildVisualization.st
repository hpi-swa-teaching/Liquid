toolbuilder
buildVisualization
	^ {(self visualizationAt: self currentQuestion)
		buildWith: ToolBuilder default}
		