pharo
testNoSendsSuperNewInitialize

	self assertAllZero: (self lint: #smallLintSuperSendsNew)