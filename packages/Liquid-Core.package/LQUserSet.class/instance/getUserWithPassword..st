accessing
getUserWithPassword: aString

	^ (self userEntries select: [:user | user pwd = aString]) first