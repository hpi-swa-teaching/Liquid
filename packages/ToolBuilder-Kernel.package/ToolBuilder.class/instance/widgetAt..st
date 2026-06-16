accessing
widgetAt: widgetID
	"Answer the widget with the given ID"
	^self widgetAt: widgetID ifAbsent:[nil]