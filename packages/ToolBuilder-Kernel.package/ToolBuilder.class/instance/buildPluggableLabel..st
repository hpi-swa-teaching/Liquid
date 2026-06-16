widgets required
buildPluggableLabel: aSpec
    | widget theLabel |
    theLabel := aSpec label.
    theLabel isSymbol
        ifTrue:  [widget := UpdatingStringMorph new
                    target: aSpec model;
                    getSelector: theLabel;
                    useStringFormat;
                    yourself.
                  widget contents: (aSpec model perform: theLabel) asString]
        ifFalse: [widget := StringMorph new contents: theLabel asString].
    self register: widget id: aSpec name.
    self setFrame: aSpec frame in: widget.
    self buildHelpFor: widget spec: aSpec.
    parent ifNotNil: [self add: widget to: parent].
    ^ widget
