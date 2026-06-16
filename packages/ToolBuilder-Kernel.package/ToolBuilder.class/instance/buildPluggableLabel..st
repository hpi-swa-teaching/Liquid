widgets required
buildPluggableLabel: aSpec
    | widget theLabel |
    widget := StringMorph new.
    self register: widget id: aSpec name.
    theLabel := aSpec label.
    theLabel isSymbol
        ifTrue:  [widget contents: (aSpec model perform: theLabel) asString]
        ifFalse: [widget contents: theLabel asString].
    self setFrame: aSpec frame in: widget.
    self buildHelpFor: widget spec: aSpec.
    parent ifNotNil: [self add: widget to: parent].
    ^ widget