comparing
ifValid: aPassword do: aBlock

	(self isValid: aPassword) ifTrue: [^ aBlock value].
	^ nil