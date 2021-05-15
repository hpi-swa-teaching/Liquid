as yet unclassified
showDialogWithTitle: aString andMessage: anotherString
"Currently only used in enterParticipantMode in LiquidStartMenu, but may have uses elsewhere"
UserDialogBoxMorph new openCenteredInWorld;
	title: aString;
	message: anotherString;
	createAcceptButton;
	getUserResponseAtHand.