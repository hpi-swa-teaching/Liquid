accessing
progressBar

	^ progressBar ifNil: [^progressBar := ProgressMorph label: 'Sending Mails']