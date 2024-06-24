A LQVisualizationControls is a UI list that can be used to select a question to be visualized.

Instance Variables
	currentVisualization:		<Morph>
	index:								<Number>
	poll:									<LQPoll>
	wrapperMorph:			<Morph>

currentVisualization
	- a Morph displaying the visualization of the currently selected question

index
	- position of the currently selected question in the poll's questionList, initially 1.

poll
	- the poll-object to be visualized
	
wrapperMorph
	- a transparent morph which contains currentVisualization as a submorph
