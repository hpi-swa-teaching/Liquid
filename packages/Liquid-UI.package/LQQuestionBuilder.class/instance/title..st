accessing
title: aText
	
	self isInLiveEditMode ifTrue: [self question wasEdited: true].
	self question title: aText asString.
	self changed: #title