accessing
submitEnabled

	^ self selectedChoiceIndex ~= 0 and: [self hasSubmitted not]
