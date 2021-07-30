intention revealing
testNoSendsAddOrRemoveToExternalCollection

	self assertAllZero: (self lint: #smallLintCollectionMessagesToExternalObject except: (LQTestCase allSubclasses))