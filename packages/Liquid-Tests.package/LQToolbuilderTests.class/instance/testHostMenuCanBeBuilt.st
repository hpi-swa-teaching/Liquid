testing
testHostMenuCanBeBuilt

	| hostMenu |
	
	hostMenu := LQHostMenu new.
	
	ToolBuilder open: hostMenu.
	
	hostMenu destroy