accessing
closeWithPassword: password
	guard ifValid: password do: [
		isOpen := false
	]