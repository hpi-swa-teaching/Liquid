# Contributing

This document aims to define our development process.

Beware: *Liquid*'s development process is not meant for world-public collaboration, so it doesn't cater to contributors outside the core team.

## Meetings

There's a weekly planning meeting on wednesday and a session with the product owner on friday.
Additional meetings are scheduled sparingly as we see fit.

Every meeting is accompanied by an issue containing agenda and potential decisions.

## Development Process

### Pre-Prototype: Throw-Away Code for Problem Exploration

We aim to get a working prototype out as fast as possible (aiming for May 19th).
Its goal is to discover unexpected difficulties in our problem domain as fast as possible and get a grasp of how an architecture could look like.

Code Quality is not a big concern until then, so we'll neglect friction-building processes like a PR-flow and formal Code Reviews and go for a trunk-based approach.
That means:

- Commit directly onto `main`
- Prevent conflicts by pushing & pulling as often as possible
- Don't spend much time on Code Quality
- Try to work in Pairs
- Communicate a lot informally about what you've been building and how that'll be used in the Prototype

### General Process

After we've explored the problem domain (again, aiming for May 12th), we go back to a *sane* development process.

That means:

- PR-based flow.
- 3 👀 on every PR. e.g. two devs that paired + one reviewer.
- PRs shall be merged sooner rather than later. if there's a small, non-blocking problem, merge the PR anyway and open an issue to fix it.
- wherever possible, TDD should be practiced.

For giving feedback, we adhere to Netlify's [Feedback Ladder](https://www.netlify.com/blog/2020/03/05/feedback-ladders-how-we-encode-code-reviews-at-netlify/).

Our Key Metrics:

- Test Coverage. We aim for ~90%. (10% for hard-to-test UI code)
- TBD


## Term Definitions

To promote a shared conception of the problem domain and reduce miscommunication, we agree on the following terms:

| Term  | Description |
| - | - |
| Question | A _Question_ object represents a question, there could be many types of questions such as single-choice, multiple-choice, free-text, .... |
| Poll-Draft | A _Poll-Draft_ consists of all the properties of a Poll that could be reused, this includes especially a title and _Questions_. |
| Poll | A _Poll_ is a _Poll-Draft_ that was started by a _Host_. |
| Creator | A _creator_ is a person that creates _Poll-Drafts_. |
| Host | A _Host_ is a person that starts a _Poll_ using a _Poll-Draft_. There can only be one _Host_ to a _Poll_, but a _Host_ can run multiple _Polls_. |
| Participant | A _Participant_ participates in a Poll by viewing it and then responds by submitting an _Answer-Set_. |
| Choice | In single-, multiple- and prioritised-choice-_Questions_ the _Participant_ can choose between a given set of options. We call each of these options a _Choice_. They are specified in the related _Question_.
| VotedChoice | Each _Choice_ that the _Participant_ choose in his _Answer_ to a _Question_ is a _VotedChoice_ |
| Answer | A _Participant_ answers a specific _Question_ in a _Poll_ with an _Answer_. The structure of the _Answer_ corresponds to the type of the _Question_ it answers. |
| Answer-Set | An _Answer-Set_ to a _Poll_ consists of all of the _Answers_ of one _Participant_. Each unique _Participant_ submits one _Answer-Set_ to a _Poll_. The _Host_ of a _Poll_ only receives _Answer-Sets_, which make up the _Result_ of the _Poll_. |
| Result | Each _Poll_ has exactly one _Result_. The _Result_ of a _Poll_ consists of the cumulative _Answer-Sets_ submitted by _Participants_. |