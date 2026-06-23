actions
playMusic

	| folder files file |
	self isMuted ifTrue: [^ self].
	self stopMusic.
	
	folder := FileDirectory default directoryNamed: 'kahoot_music'.
	folder exists ifFalse: [
		folder assureExistence.
		Transcript show: 'Created kahoot_music folder at: ', folder fullName; cr.
		^ self
	].
	
	files := folder fileNames select: [:each | each endsWith: '.wav'].
	files isEmpty ifTrue: [
		Transcript show: 'No .wav files found in: ', folder fullName; cr.
		^ self
	].
	
	file := files atRandom.
	
	[ | snd |
		snd := SampledSound fromWaveFileNamed: (folder fullNameFor: file).
		self currentSound: snd.
		snd play
	] on: Error do: [:ex | 
		Transcript show: 'Audio Error: ', ex asString; cr.
	]
