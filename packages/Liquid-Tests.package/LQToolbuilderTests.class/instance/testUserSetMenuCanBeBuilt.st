testing
testUserSetMenuCanBeBuilt

	| userSetMenu |
	
	userSetMenu := LQUserSetMenu new.
	
	ToolBuilder open: userSetMenu.
	
	userSetMenu destroy