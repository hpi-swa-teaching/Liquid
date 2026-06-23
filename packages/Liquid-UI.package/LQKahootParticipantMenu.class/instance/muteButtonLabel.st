accessing
muteButtonLabel

	^ self isMuted ifTrue: ['Unmute'] ifFalse: ['Mute']
