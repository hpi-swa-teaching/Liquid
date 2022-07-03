modifying
injectUserDataFrom: aUser

	^LQStringProcessor replaceAll: aUser mailMapping in: self rawMailText