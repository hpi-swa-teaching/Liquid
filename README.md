# Liquid

Group 3 SWT 2024

[![CI](https://github.com/hpi-swa-teaching/Liquid/workflows/CI/badge.svg?branch=develop)](https://github.com/hpi-swa-teaching/Liquid/actions)
[![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/Liquid/badge.svg?branch=develop)](https://coveralls.io/github/hpi-swa-teaching/Liquid?branch=develop)

### Installation

First of all install metacello following [this guide](https://github.com/Metacello/metacello#squeak). If your Squeak is on version 5.2 or newer, it is enough to run this code line in your workspace:

```smalltalk
Installer ensureRecentMetacello.
```

Then run this code in your workspace:

#### If you want the latest version

```smalltalk
Metacello new
  baseline: 'Liquid';
  repository: 'github://hpi-swa-teaching/Liquid:develop/packages';
  load.
```

#### If you want a more stable version

```smalltalk
Metacello new
  baseline: 'Liquid';
  repository: 'github://hpi-swa-teaching/Liquid:main/packages';
  load.
```

#### If you want a release version

0. Ensure you have the latest version of the GitBrowser
1. Download the SAR packages for both StatisticsWorkbench and Liquid
2. Install the SAR package for StatisticsWorkbench (the order matters)
3. Install the SAR package for Liquid

### If you want to use Liquid, here is a quick introduction:

In your Squeak Workspace run:

```smalltalk
LQStartMenu open.
```

There you should be able to choose between the "Participant" and "Host" View.
If you want to create a poll and run it, close a poll or show the results of a running poll choose "Host". For creating a poll, click "create poll" then choose the type of question and type the question and if required possible answers in the according text fields. Alternatively you can create a poll from your saved drafts. When pressing the according button a new window opens showing the saved drafts.
For MultipleChoice and Priotarization questions every newline in the box under the question represents a possible answer, so be sure to keep every answer on its own line.
On the bottom you can run your poll and give it an id. The id is required for the participants to enter. To allow participants easy access to your poll press the copy poll link button while having the right poll selected in the host menu. Now you can send that link to participants by pasting it in.
If you want to close a poll click "close poll" in the host menu. Now participants are not able to enter that poll anymore.
For the poll results there is a live visualization in the host menu. You can also export the results to the DataExports directory in your squeak folder. The export file is named after your poll id. To minimize clutter press delete poll when a poll is not needed anymore.
To stop any user from participating in any of your polls press stop server.

Participants can choose the "Participant" button in the Start Menu. Enter the link of the poll you want to participate in. Answer every question by selecting or writing text and press send answers.

## Tests
We tested the application via:
- Integration Tests (can be found in `Liquid-Tests`-package)
- Unit Tests (can be found in `Liquid-Tests`-package)
- Use Case Tests (can be found in [Use Case Test Specification](https://github.com/hpi-swa-teaching/Liquid/blob/develop/docs/UseCases.md))


Anmerkungen: 
Fürs Refactoring haben wir PoppyPrint verwendet. Daher werden unter anderem die Klassen LQUserSetMenu, LQUserSetSelectionMenu, LQMailDialog als geändert angezeigt. Diese Klassen haben wir allerdings weder manuell refactored noch anderweitig verändert. 
