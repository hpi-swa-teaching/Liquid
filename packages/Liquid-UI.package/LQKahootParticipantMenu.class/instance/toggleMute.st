actions
toggleMute

	self isMuted: self isMuted not.
	self isMuted ifTrue: [
		self stopMusic
	] ifFalse: [
		self playMusic
	].
