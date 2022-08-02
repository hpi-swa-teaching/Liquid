supporting
compareUser1: aLQUser1 user2: aLQUser2

	^ (aLQUser1 firstname = aLQUser2 firstname)
	and: (aLQUser1 surname = aLQUser2 surname)
	and: (aLQUser1 mail = aLQUser2 mail)
	and: (aLQUser1 group = aLQUser2 group)