actions
playMusicFile: aFile from: aFolder

	[ | sound |
		sound := SampledSound fromWaveFileNamed: (aFolder fullNameFor: aFile).
		self currentSound: sound.
		sound play]
		on: Error
		do: [:ex | ^ self]