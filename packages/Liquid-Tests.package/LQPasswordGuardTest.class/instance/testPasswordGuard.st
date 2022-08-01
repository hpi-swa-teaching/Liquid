tests
testPasswordGuard

	| guard |
	guard := LQPasswordGuard newWithPassword: 'pikachu'.
	self assert: (guard isValid: 'pikachu').
	self deny: (guard isValid: 'raiku').
	self assert: (guard ifValid: 'pikachu' do: [10]) = 10.
	self assert: (guard ifValid: 'raiku' do: [10]) isNil.
	self assert: ((STON toString: guard) includes: 'pikachu') not