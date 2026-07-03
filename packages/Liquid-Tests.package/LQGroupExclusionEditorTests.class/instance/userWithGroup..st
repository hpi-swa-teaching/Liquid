helper methods
userWithGroup: aString

	^ LQUser new
		firstname: 'Test';
		surname: aString;
		mail: aString , '@mail.com';
		group: aString;
		yourself