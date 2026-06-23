LQDeadlineMenuTests is a class containing the tests for the class LQDeadlineMenu in Liquid-UI.

It ensures that the selected dropdown indices map to the correct deadline, that confirming a valid future date writes it to the poll-draft, that clearing removes it, and that reopening restores a previously chosen deadline.

Instance Variables
	builder:				<ToolBuilder>
	deadlineMenu:	<LQDeadlineMenu>

builder
	a ToolBuilder used to build the LQDeadlineMenu in order to test it

deadlineMenu
	the LQDeadlineMenu that is being tested