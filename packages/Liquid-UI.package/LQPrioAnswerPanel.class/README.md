The LQAnswerPanel contains all logic needed to display and interact with LQQuestion in the LQParticipantMenu. As this is a lot, also depending on (future) different kinds of questions, this logic has been moved out of the LQParticipantMenu into this class, even though the UI is displayed concurrently with the LQParticipantMenu.
Note that currently (07/2021) the LQAnswerPanel only supports LQChoicesQuestions.

Notable Instance Variables:
answer: The LQAnswer currently being edited by the participant. One LQAnswer exists for each LQQuestion and Participant.
choiceSelected: The choice that was last selected in the MultiSelectionList.
selectedChoices: An Set of all choices that have already been selected by the participant.