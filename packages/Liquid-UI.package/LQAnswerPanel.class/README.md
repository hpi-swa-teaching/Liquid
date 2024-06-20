The LQAnswerPanel contains all logic needed to display and interact with LQQuestion in the LQParticipantMenu. As this is a lot, also depending on (future) different kinds of questions, this logic has been moved out of the LQParticipantMenu into this class, even though the UI is displayed concurrently with the LQParticipantMenu.

The Sideboard shows Xs when the question is a MultiChoice Question (via getMarkers), and the ranking for when the question is a priority question.

Notable Instance Variables:
answer: The LQAnswer currently being edited by the participant. One LQAnswer exists for each LQQuestion and Participant.
choiceSelected: The choice that was last selected in the MultiSelectionList.
selectedChoices: An Set (OrderedCollection for the Priority Case) of all choices that have already been selected by the participant.