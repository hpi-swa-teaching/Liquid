accessing
getUserWithToken: aString

	^ (self userEntries select: [:user | user token = aString]) first