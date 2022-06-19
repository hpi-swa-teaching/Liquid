initialize
on: anUrl withId: anId andPassword: anObject

	^ self basicNew initializeWith: anUrl andId: anId;
			currentPassword: anObject;
			yourself