as yet unclassified
incrementBy: aNumber
	i := i + aNumber.
	subscribers do: [ :sub | sub value: i ].