toolbuilder
buildCloseButtonWith: aBuilder
    ^ aBuilder pluggableButtonSpec new
        model: self;
        label: 'Close';
        action: #destroy;
        frame: (LayoutFrame new
            topFraction: 0.9; bottomFraction: 0.99;
            leftFraction: 0.7; rightFraction: 0.99;
            yourself);
        yourself