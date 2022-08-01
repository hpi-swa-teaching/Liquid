# LQUserSet

## Wtf is an _LQUserSet_?

The _LQUserSet_ is a container containing LQUsers.
It is referenced by a randomly generated ID.
It encapsulates a collection of LQUsers and a title for the user set.
The LQUsers themself contain a firstname, a surname, a group, a mail and a token.
A _LQUserSet_ can add itself to the LQUserSetRepo, where it is safed as a global state. 

## How can it be used?

This snippet illustrates usage of the _LQUserSet_:

```smalltalk
"Creating a new user with given data"
user1 := LQUser new
    firstname: 'erika';
    surname: 'musterfrau';
    mail: 'erika.mustermann@hotmail.com';
    group: 'group1';
    token:'123';
    yourself.
"Adding a user to the user set"
LQUserSet new
         addUser: self user1.

userSet containsUserWithToken: '123' "true"
```

## Why did you build it?

We tried to implement features that required us to know certain things about our user. These include:

1. Sending Emails to our user containing their designated credential for a poll.
2. Verify votes from users and make non-public polls.

So we needed a way to store all of this data.
A UserSet simply wraps the data of all users.
Since this data is used all over our system, it was convenient to add it to some sort of global state.

## How do you have to interact with user sets?

### Creation of user sets

User sets are created from csv-files.
These can be selected by the host when creating a poll.
The title of a user set can be choosen after the csv-file has been selected.
The csv-file should look something like this
```
maximilian,speer,maximilian.speer@Liquid.de,group1
anton,persitzky,anton.persitzky@Liquid.de,group2
Ben,Wegener,ben.wegener@Liquid.de,group3
Benildur,Nickel,benildur.nickel@Liquid.de,group4
jakob,timm,jakob.timm@Liquid.de,group2
Konrad,Gerlach,konrad.gerlach@Liquid.de,group2
```
The host can also choose from all previously added user sets which are stored in their Squeak-Image.

### Management of user sets

The Host can add or remove user sets from their system from the user set menu, accessable from the main host menu.
This menu also provides an overview of all user sets currently in the image.

