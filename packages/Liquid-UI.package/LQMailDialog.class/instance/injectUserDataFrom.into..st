modifying
injectUserDataFrom: aUser into: aString

	^ LQStringProcessor replaceAll: aUser mailMapping in: aString