communication
fullNameAt: key

    ^ (WebClient httpGet: (self urlForFullNameRequestForPollWithId: key)) content