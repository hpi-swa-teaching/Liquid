validation
hasDuplicateChoices
	self isFreeTextQuestion ifTrue: [^ false].
	^ (LQDuplicateDetector new identifyDuplicates: (self choiceList collect: [:each | each description])) notEmpty