modifying
enterHostMode

	LQRemotePollRepoServer startServer.
	UIManager default inform: 'Now hosting liquid server on port ', LQRemotePollRepoServer port.
	ToolBuilder open: LQHostMenu new.
	self destroy