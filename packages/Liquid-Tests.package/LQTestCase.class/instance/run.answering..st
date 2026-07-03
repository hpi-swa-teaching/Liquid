helper methods
run: aBlock answering: aCollectionOfAssociations
	"Runs aBlock while auto-answering UIManager dialogs. Each association maps a substring of the dialog text to an answer (label String, index Number or input String). An OrderedCollection as answer value is consumed front to back for repeated dialogs. Unmatched dialogs (e.g. informs) are suppressed."

	^ aBlock on: ProvideAnswerNotification do: [:notification |
		notification resume: (self answerFor: notification in: aCollectionOfAssociations)]