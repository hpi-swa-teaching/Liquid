modes
enterHostMode

	ToolBuilder open: LiquidHostMenu new.
	self dependents do: [:curr | curr delete].