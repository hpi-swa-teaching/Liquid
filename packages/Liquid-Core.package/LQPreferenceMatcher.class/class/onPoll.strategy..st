instance creation
onPoll: aPoll strategy: aMatcherClass
    ^ self new poll: aPoll; matcherClass: aMatcherClass; yourself
