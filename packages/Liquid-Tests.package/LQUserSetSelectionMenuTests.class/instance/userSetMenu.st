accessing
userSetMenu

	^ userSetMenu ifNil: [^ userSetMenu := LQUserSetSelectionMenu new]