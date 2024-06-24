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
If you want to create a poll and run it, close a poll or show the results of a running poll choose "Host". For creating a poll, click "create poll" then type in your Question in the Header of the window.
Every newline in the box under the question is a possible answer, so be sure to keep every answer on its own line.
On the bottom you can run your poll and give it an id. Keep the id, it is used to access the poll and its results.
If you want to close a poll click "close poll" in the host menu. After entering the poll id of the running poll you want to close, participants will not be able to send new answers.
For the poll results, press "Show results" and input the respective poll id.

Participants can choose the "Participant" button in the Start Menu. Enter the Poll id of the poll you want to participate in. Choose one or multiple answers and push the send button.

## Tests
We tested the application via:
- Integration Tests (can be found in `Liquid-Tests`-package)
- Unit Tests (can be found in `Liquid-Tests`-package)
- Use Case Tests (can be found in [Use Case Test Specification](https://github.com/hpi-swa-teaching/Liquid/blob/develop/docs/UseCases.md))
