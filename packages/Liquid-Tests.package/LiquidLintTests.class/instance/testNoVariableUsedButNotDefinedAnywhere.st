bugs
testNoVariableUsedButNotDefinedAnywhere

	self assertAllZero: (self lint: #smallLintVariableNotDefined)