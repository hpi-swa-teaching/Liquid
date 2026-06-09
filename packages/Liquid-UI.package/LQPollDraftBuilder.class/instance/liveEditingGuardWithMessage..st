modifying
liveEditingGuardWithMessage: aString
	(self isInLiveEditMode) ifTrue: [UIManager default inform: aString. ^ true].
	^ false