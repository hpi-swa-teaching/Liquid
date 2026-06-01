toolbuilder
buildSelfVotingButtonWith: aBuilder

    ^ aBuilder pluggableButtonSpec new
        model: self;
        label: #selfVotingButtonLabel;
        help: 'Toggle whether participants can vote for their own project / entry on this question.';
        action: #toggleAllowSelfVoting;
        frame: (LayoutFrame fractions: (0 @ 0.9 extent: 1 @ 0.1) offsets: (0 @ 0 extent: 0 @ 0));
        yourself