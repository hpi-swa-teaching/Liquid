toolbuilder
buildTitleLabelWith: aBuilder
    ^ aBuilder pluggableButtonSpec new
        model: self;
        label: 'allocation';
        enabled: false;
        frame: (LayoutFrame new
            topFraction: 0.01; bottomFraction: 0.09;
            leftFraction: 0.01; rightFraction: 0.99;
            yourself);
        yourself
