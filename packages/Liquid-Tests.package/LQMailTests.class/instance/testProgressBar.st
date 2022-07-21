testing
testProgressBar

	self mailDialog openProgressBar.
	self mailDialog progressBar.
	self assert: self mailDialog progressBar label equals: 'Sending Mails'.
	self assert: self mailDialog progressBar done equals: 0.
	
	self mailDialog progressBar done: 1.
	self assert: self mailDialog progressBar done equals: 1.
	
	self mailDialog closeProgressBar