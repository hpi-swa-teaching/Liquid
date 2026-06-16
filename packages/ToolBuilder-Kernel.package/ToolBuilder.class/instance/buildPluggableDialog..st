widgets optional
buildPluggableDialog: spec

	| windowSpec |
	windowSpec := self pluggableWindowSpec new.
	windowSpec children: (spec children ifNil: [OrderedCollection new]).
	
	"TODO: Convert the dialog's message into some element in the children."
		
	spec buttons ifNotNil: [:buttons | windowSpec children addAll: buttons].
	windowSpec
		model: spec model;
		extent: spec extent;
		label: spec title.
	^ self buildPluggableWindow: windowSpec