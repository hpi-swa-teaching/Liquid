tests
testSurveyNameCanBeSet

	self survey title: 'My survey'.
	self assert: self survey title equals: 'My survey'