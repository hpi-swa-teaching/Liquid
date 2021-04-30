# Contributing

This document aims to define our development process.

Beware: *Liquid*'s development process is not meant for world-public collaboration, so it doesn't cater to contributors outside the core team.

## Meetings

There's a weekly planning meeting on wednesday and a session with the product owner on friday.
Additional meetings are scheduled sparingly as we see fit.

Every meeting is accompanied by an issue containing agenda and potential decisions.

## Development Process

### Pre-Prototype: Throw-Away Code for Problem Exploration

We aim to get a working prototype out as fast as possible (aiming for May 12th).
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

