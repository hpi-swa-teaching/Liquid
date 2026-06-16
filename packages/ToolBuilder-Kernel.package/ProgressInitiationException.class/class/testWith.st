examples and tests
testWith

	"test progress code WITH special handling of progress notifications"

	^[ self testWithAdditionalInfo ] 
		on: ProgressInitiationException
		do: [ :ex | 
			ex sendNotificationsTo: [ :min :max :curr |
				Transcript show: min printString,'  ',max printString,'  ',curr printString; cr
			].
		].
