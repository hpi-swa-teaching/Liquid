# ObjectRepo

## Wtf is an _ObjectRepo_?

The _ObjectRepo_ is a custom-built networking abstraction.
It allows your Smalltalk objects to do _Remote Message Passing_: In addition to passing messages from one object to another object in the same Squeak instance, the _ObjectRepo_ allows passing messages over the network, to objects that live in remote Squeak instances.
In Liquid, this is used for our Client-Server-Communication.

## How can it be used?

This snippet illustrates usage of the ObjectRepo:

```smalltalk
"start the server on port 8000"
server := RemoteRepoServer new listenOn: 8000
"and get a client that's connected to it"
client := RemoteRepoClient new url: 'http://localhost:8000'

"this is a local object."
flowers := Set with: 'rose' with: 'lily' with: 'orchid'

"we can place a copy of it on the server ..."
client at: 'flowers' put: flowers

"... and obtain a local representation."
flowersClient := client at: 'flowers'

"The representation bevahes exactly like the local version!"
flowersClient contains: 'rose' "true"
flowersClient contains: 'tulip' "false"

"but instead of locally answering the messages,"
"it will send them over the network."
flowersClient add: 'tulip'

"So the local version won't be updated:"
flowers contains: 'tulip' "false"
```

## Why did you build it?

There are battle-tested solutions to doing Client-Server-Communication. Chances are, if you built a client-server app before, that you've built a REST API. Why didn't we just do so with Liquid?

The client-server communication lies at the core of Liquid. There's no complicated business logic, no intricate UI - it's mostly about

1. getting polls from hosts to participants and
2. returning answers from participants to hosts.

If we built a REST API for this, we'd have worried a lot about what HTTP Verbs to use, data serialisation, http-specific error handling, and generally just a lot of things that aren't central to our application.

The ObjectRepo allows us to work with networking, without having to think about it a lot. It works (almost) like local Smalltalk objects!
This abstraction allowed us to move quickly in the beginning, without requiring the team to get familiar with building an API.

We also just wanted to try out this approach. It's heavily inspired by the RPC abstraction of [Blitz.js](https://blitzjs.com/docs/query-resolvers), and [@skn0tt](https://github.com/Skn0tt) was interested in how a similar approach could work in Smalltalk.

## How does it work?

TODO
