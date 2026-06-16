compatibility
addSubMenu: aBlock

	| sub |
	sub := self newSubmenu.
	aBlock value: sub.
	self subMenu: sub.