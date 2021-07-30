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

"The representation behaves exactly like the local version!"
flowersClient contains: 'rose' "true"
flowersClient contains: 'tulip' "false"

"but instead of locally answering the messages,"
"it will send them over the network."
flowersClient add: 'tulip'

"So the local version won't be updated:"
flowers contains: 'tulip' "false"
```

## Why did you build it?

There are battle-tested solutions for Client-Server-Communication. Chances are, if you built a client-server app before, that you've built a REST API. Why didn't we just do so with Liquid?

Client-server communication lies at the core of Liquid. There's no complicated business logic, no intricate UI - it's mostly about:

1. getting polls from hosts to participants and
2. returning answers from participants to hosts.

If we built a REST API for this, we'd have worried a lot about what HTTP Verbs to use, data serialisation, http-specific error handling, and generally just a lot of things that aren't central to our application.

The ObjectRepo abstracts away all of this. It allows working (almost) as if there was no network, replacing network calls with ordinary Smalltalk message passing.
This abstraction allowed us to move quickly in the beginning, without requiring the team to get familiar with building an API.

We also just wanted to try out this approach. It's heavily inspired by the RPC abstraction of [Blitz.js](https://blitzjs.com/docs/query-resolvers), and [@skn0tt](https://github.com/Skn0tt) was interested in how a similar approach could work in Smalltalk.

## How does it work?

Everything is centered around the `ObjectRepo` class (what a fitting name!). Technically, there's two different implementations of it: The `RemoteRepoClient` and the `LocalObjectRepo`. `RemoteRepoClient` is the _real_ one, _LocalObjectRepo_ is part of a local emulator which we'll swiftly get into later. Please ignore it for now.

`ObjectRepos` manage objects. In our case, they manage `LQPoll` objects - although it could technically also manage Strings, Sets, Dictionaries, Morphs, or any other squeak object.

Let's set up a server to listen on port 9000, and connect a client to it:

```smalltalk
server := RemoteRepoServer new listen: 9000. "starts a server to listen on port 9000"
repoClient := RemoteRepoClient new url: 'http://localhost:9000'. "connects the repo client"
```

The `repoClient` is connected to `server`. In our case, the server is running on the same machine (`localhost`), but it could also be somewhere in the internet (in 2020, we had a server running on `https://hpi-liquid.xyz`).
We can now use the `repoClient` to place a Smalltalk object on the server:

```smalltalk
repoClient
  at: 'some-id'
  ifPresent: [ "this is executed if there's alread something at 'some-id'" ]
  ifAbsentPut: (LQPoll new ...).
```

Please take a look at the implementation of [`at:ifPresent:ifAbsentPut`](https://github.com/hpi-swa-teaching/Liquid/blob/e040eeedc11a266bf84eca6fafcc09075d7ecd2d/packages/Liquid-Core.package/RemoteRepoClient.class/instance/at.ifPresent.ifAbsentPut..st).
You can see that it will make a `HTTP PUT` request to `/?id=some-id`, sending over a STON-ned representation of the LQPoll to be created.
STON is similar to JSON, and it's a text-based representation for Smalltalk objects.
This request is handled by [`RemoteRepoServer >> httpPut`](https://github.com/hpi-swa-teaching/Liquid/blob/e040eeedc11a266bf84eca6fafcc09075d7ecd2d/packages/Liquid-Core.package/RemoteRepoServer.class/instance/httpPut..st). As you can see, it takes the request, [turns the STON back into a smalltalk object](https://github.com/hpi-swa-teaching/Liquid/blob/e040eeedc11a266bf84eca6fafcc09075d7ecd2d/packages/Liquid-Core.package/RemoteRepoServer.class/instance/httpPut..st#L10), and stores it [under the specified ID](https://github.com/hpi-swa-teaching/Liquid/blob/e040eeedc11a266bf84eca6fafcc09075d7ecd2d/packages/Liquid-Core.package/RemoteRepoServer.class/instance/httpPut..st#L4).

So far, so good! We managed to send a copy of a local Smalltalk object over the network, and it now lives on the server. Other clients could now download that object, e.g. [by calling `HTTP GET /?id=some-id`](https://github.com/hpi-swa-teaching/Liquid/blob/e040eeedc11a266bf84eca6fafcc09075d7ecd2d/packages/Liquid-Core.package/RemoteRepoServer.class/instance/httpGet..st). While that would yield you a STON representation of the object, which you could use to read the questions or a poll's results, it wouldn't actually allow _communicating_ with the object. For that, we have the `RemoteObjectDummy`. It can be obtained using [`RemoteRepoClient >> at:ifAbsent:`](https://github.com/hpi-swa-teaching/Liquid/blob/e040eeedc11a266bf84eca6fafcc09075d7ecd2d/packages/Liquid-Core.package/RemoteRepoClient.class/instance/at.ifAbsent..st)

```smalltalk
"let's get a dummy to it!"
localDummy := repoClient at: 'some-id' ifAbsent: [ "this is executed if there's nothing at 'some-id'" ]
```

The `RemoteObjectDummy` is a special contraption: It implements [`doesNotUnderstand:`](https://github.com/hpi-swa-teaching/Liquid/blob/e040eeedc11a266bf84eca6fafcc09075d7ecd2d/packages/Liquid-Core.package/RemoteObjectDummy.class/instance/doesNotUnderstand..st), which is a special Squeak receiver that will be called for any unhandled message.
Since `RemoteObjectDummy` implements no other handlers, `doesNotUnderstand:` will receive _any_ message that is sent to the object.
The `RemoteObjectDummy` will then take that Squeak message, turn it into STON, and send it as a `HTTP POST` to the server.
It will handle it with [`RemoteRepoServer >> httpPost`](https://github.com/hpi-swa-teaching/Liquid/blob/20332b80928a2c239ee5082523cc3fb1b6555c8c/packages/Liquid-Core.package/LQRemoteRepoServer.class/instance/httpPost..st), which [turns the STON into a Squeak message](https://github.com/hpi-swa-teaching/Liquid/blob/20332b80928a2c239ee5082523cc3fb1b6555c8c/packages/Liquid-Core.package/LQRemoteRepoServer.class/instance/httpPost..st#L7) again, [sends it the object](https://github.com/hpi-swa-teaching/Liquid/blob/20332b80928a2c239ee5082523cc3fb1b6555c8c/packages/Liquid-Core.package/LQRemoteRepoServer.class/instance/httpPost..st#L14), and [returns the response](https://github.com/hpi-swa-teaching/Liquid/blob/20332b80928a2c239ee5082523cc3fb1b6555c8c/packages/Liquid-Core.package/LQRemoteRepoServer.class/instance/httpPost..st#L20) back to the client.
This will then take that response, and answer it to continue the normal Squeak request flow.

### What is the LocalObjectRepo?

The `LocalObjectRepo` is a lookalike of `RemoteRepoClient`, which doesn't work over the network at all and thus is easier to set up locally. It's designed to replicate the intricacies of the Remote Repo, but you shouldn't depend on that.

### Intricacies of the ObjectRepo

#### Law of Demeter

Consider the following code:

```smalltalk
pollDummy := repoClient at: 'some-poll' ifAbsent: [ ... ].
answers := pollDummy answerSets.
answers size = 1                   "assume there's alread one answer".
answers add: (LQAnswerSet new ...) "lets add another one".
answers size = 2                   "now there's two!.
```

Now if we get a pollDummy from another machine, what do you expect the size of `pollDummy answerSets` to be?

```smalltalk
anotherPollDummy := repoClient at: 'some-poll' ifAbsent: [ ... ].
anotherPollDummy answersSets size = 1. "what?"
```

While the addition of an answer set was successful on one machine, nothing happened on another one. While `pollDummy` is an instance of `RemoteObjectDummy` that's connected to the server, `pollDummy answerSets` is the response of the `answerSets` message: A `Set`, which only exists locally. Now if you send any messages to that set, the `pollDummy` isn't able to keep track of it, and all changes will stay local to that machine.

That's why you always need to follow the Law of Demeter: If you talk with a Poll / Poll dummy, always send messages directly to it! In our case, we could send `pollDummy addAnswerSet: ...` instead.
