tests
testStartMenuCanBeBuilt

	| startMenu |
	
	startMenu := LQStartMenu new.
	
	ToolBuilder open: startMenu.
	
	startMenu destroy