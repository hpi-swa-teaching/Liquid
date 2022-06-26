modifying
enterHostMode

	LQRemotePollRepoServer startServer.
	UIManager default inform: 'Now hosting liquid server on port 8000'.
	ToolBuilder open: LQHostMenu new.
	self destroy