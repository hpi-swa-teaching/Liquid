modifying
closeWithPassword: aPassword

	self guard ifValid: aPassword do: [self isOpen: false]