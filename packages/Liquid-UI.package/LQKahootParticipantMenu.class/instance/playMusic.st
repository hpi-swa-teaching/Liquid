actions
playMusic

	| folder files |
	self isMuted ifTrue: [^ self].
	self stopMusic.
	
	folder := FileDirectory default directoryNamed: 'kahoot_music'.
	folder exists ifFalse: [
		folder assureExistence.
		^ self].
	
	files := folder fileNames select: [:each | each endsWith: '.wav'].
	files isEmpty ifTrue: [^ self].
	self playMusicFile: files atRandom from: folder