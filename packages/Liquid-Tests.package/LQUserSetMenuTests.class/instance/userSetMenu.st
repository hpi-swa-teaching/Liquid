accessing
userSetMenu
	
	^ userSetMenu ifNil: [^userSetMenu := LQUserSetMenu new]