handling
resumeSuppressingProgress
	"Catch and suppress every ProgressInitiationException and ProgressNotification
	during the evaluation of workBlock"

	^self resumeEvaluating:
		[self rearmHandlerDuring:
			[[workBlock value: [ :barVal | "do nothing"]]
				on: ProgressNotification do: [:e | e resume]]]