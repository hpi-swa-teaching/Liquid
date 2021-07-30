# Future Vision

## Where to go from here?

Liquid still hasn't reached its full potential. We wanted to do a lot more than we managed to do in this semester. You can look through our user stories on github or zenhub (please beware that the user stories project on github is outdated, because we switched to zenhub). To present a clear overview here is a short list (please refer to the [contributing doc](https://github.com/hpi-swa-teaching/Liquid/blob/main/CONTRIBUTING.md) for term definitions):

-   ### Multiple questions per poll
    Initially we wanted to implement multiple questions per poll. Our client did not deem this necessary for the time being. But because we already started making the proper infrastructure for this function, we decided to leave it there for possible future developers. For example, our poll-draft object still has a 'questionList'.
-   ### Poll overview
    Currently, every poll-draft can only be accessed through its id. It would make the workflow with Liquid a lot easier if all the poll-drafts in the current squeak image could be accessed. For example, having a list with all poll-drafts, one with all currently running polls and one with all the poll results.
-   ### More question types
    Liquid currently supports single choice questions and multiple choice questions. We also wanted to implement priority based voting and free text answers
-   ### Question Icons
    To help participants filling out polls, we thought about making icons for the different question types. By hovering over the items you would be able to read a small instruction on what to do and what type of question you are answering.
-   ### Fixing mistakes/ adjusting polls while they are running
-   ### Publishing polls to the same audience after you already ran a poll with them.
-   ### Counter telling the host how many people have submitted answers
-   ### Additional Security

    Our security is still very rudimentary.

    -   #### Remote Code Execution && XSS

Both RCE and XSS is currently possible, and should be fixed. It's tracked in [#124](https://github.com/hpi-swa-teaching/Liquid/issues/124).

    -   #### DDOS

        Possible.

    -   #### PasswordGuard

        -   `LQPasswordGuard` guards a poll from outside access without the correct password. For this a password is currently automatically created from a UUID. We deem this as secure enough, even tough [it is not cryptographically sound](https://security.stackexchange.com/a/165991).
        -   Only hashes of the passwords are stored on the server. But the currently used hashing algorithm isn't cryptographically sound. Here's an issue to track this: [#122](https://github.com/hpi-swa-teaching/Liquid/issues/122)
        -   Currently you have to manually check for the correct password in the functions you find it necessary. Instead of a _blacklist_, a  _whitelist_ (all functions are protected by default, only some are not) would be more secure.
        -   ObjectRepo: Prevent meta-messages like perform: to be sent to object #124

    -   #### Vote manipulation

        -   Currently we only check for double votes on the clientside by saving the polls one has already answered in a variable. So it is possible to double vote by
            -   Changing this variable in the SQUEAK-Image
            -   Closing and opening the SQUEAK-Image again without saving
            -   using a second machine or SQUEAK-Image altogether.
        -   The most secure solution we envisioned is to generate a personal password each of the participants. Those could maybe be sent via email to the participants.
