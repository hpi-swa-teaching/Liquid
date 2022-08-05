testing
testPasswordGuard

	| someBlock guard |
	
	someBlock := [Number one].
	guard := LQPasswordGuard newWithPassword: 'pikachu'.
	self assert: (guard isValid: 'pikachu').
	self deny: (guard isValid: 'raiku').
	self assert: (guard ifValid: 'pikachu' do: someBlock) = someBlock value.
	self assert: (guard ifValid: 'raiku' do: someBlock) isNil.
	self assert: ((STON toString: guard) includes: 'pikachu') not