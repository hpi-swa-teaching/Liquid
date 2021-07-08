as yet unclassified
displayError: anError
	|errorModal|
	errorModal := LiquidRemoteErrorModal new.
	errorModal remoteError: anError.
	ToolBuilder open: errorModal.
	