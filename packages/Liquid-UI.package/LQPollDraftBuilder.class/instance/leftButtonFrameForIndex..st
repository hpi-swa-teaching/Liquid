toolbuilder
leftButtonFrameForIndex: anInteger
	| buttonTop buttonBottom |
	buttonTop := self leftButtonBlockTop + ((anInteger - 1) * self leftButtonRowHeight).
	buttonBottom := buttonTop + self leftButtonRowHeight.
	
	^ self frame: buttonBottom fromTop: buttonTop fromLeft: 0.0 width: 0.25