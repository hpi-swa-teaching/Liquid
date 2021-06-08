possible bugs
testNoModifiesCollectionWhileIteratingOverIt

	self assertAllZero: (self lint: #smallLintModifiesCollection)