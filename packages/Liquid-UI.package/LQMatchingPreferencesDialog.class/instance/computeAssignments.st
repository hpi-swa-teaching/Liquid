modifying
computeAssignments
    self assignments:
        (LQPreferenceMatcher onPoll: self poll strategy: self matcherClass) computeAssignments
