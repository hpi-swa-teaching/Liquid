*ToolBuilder-Kernel-compatibility
addItem: aBlock
	| item |
	item := PluggableMenuItemSpec new.
	aBlock value: item.
	item subMenu
		ifNil: [self add: item label action: item action]
		ifNotNil: [self add: item label target: ToolBuilder selector: #open: argument: item subMenu].