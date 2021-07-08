accessing
remoteError: anObject

	remoteError := anObject.
	"[] on: RemoteError do: [ :error | LiquidRemoteErrorModal displayError: error ]."