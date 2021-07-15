# Future Vision

## Where to go from here?
Liquid still hasn't reached its full potential. We wanted to do a lot more than we managed to do in this semester. You can look through our user stories on github or zenhub (please beware that the user stories project on github is outdated, because we switched to zenhub). To present a clear overview here is a short list (please refer to the  [contributing doc](https://github.com/hpi-swa-teaching/Liquid/blob/main/CONTRIBUTING.md) for term definitions):
- initially we wanted to  implement multiple questions per poll. Our client did not deem this  necessary for the time being. But because we already started making the proper infrastructure for this function, we decided to leave it there for possible future developers. For example, our poll-draft object still has a 'questionList'.
- currently, every poll-draft can only be accessed through its id. It would make the workflow with Liquid a lot easier if all the poll-drafts in the current squeak image could be accessed. For example, having a list with all poll-drafts, one with all currently running polls and one with all the poll results.
- more question types. Liquid currently supports single choice questions and multiple choice questions. We also  wanted to implement priority based voting and free text answers
- to help participants filling out polls, we thought about making icons for the different question types. By hovering over the items you would be able to read a small instruction on what to do and what  type of question you are answering.
- fixing small mistakes/ adjusting polls while they are running.
- publishing polls to the same audience after you already ran a poll with them.
- Our security is still very rudimentary.