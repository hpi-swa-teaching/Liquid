preferences
openToolsAttachedToMouseCursor

	<preference: 'Open Tools Attached to Mouse Cursor'
		categoryList: #(Tools mouse)
		description: 'If enabled, new tool windows will be attached to the mouse cursor to be positioned on screen with an additional click-drag. Only occurs if a mouse event triggered that tool opening to not interfere with keyboard-based interaction.'
		type: #Boolean>
	^ OpenToolsAttachedToMouseCursor ifNil: [false]