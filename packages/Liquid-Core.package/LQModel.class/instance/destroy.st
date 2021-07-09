initialize-release
destroy

	self dependents
		do: [:curr | curr delete]