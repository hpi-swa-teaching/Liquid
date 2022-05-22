toolbuilder
openUserSetFileDialog

	| fc stream |
	fc := FileChooser new.
	fc initializeAsSystemWindowWithCaptionPane.
	fc setCaption: 'Select a .csv file' translated.
	fc setSuffixes: {'csv'}.
	stream := fc open.
	stream ifNotNil: [self addUserWith: stream]