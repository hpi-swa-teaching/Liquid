modifying
addToRepo

	LQUserSetRepo default at: (self id) ifPresent: [self error] ifAbsentPut: self