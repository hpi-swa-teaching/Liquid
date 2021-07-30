# Liquid

Group 13 SWT 2021

[![CI](https://github.com/hpi-swa-teaching/Liquid/workflows/CI/badge.svg?branch=main)](https://github.com/hpi-swa-teaching/Liquid/actions)
[![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/Liquid/badge.svg?branch=main)](https://coveralls.io/github/hpi-swa-teaching/Liquid)

### Installation
First of all install metacello following [this guide](https://github.com/Metacello/metacello#squeak). If your Squeak is on version 5.2 or newer, it is enough to run this code line in your workspace:
```Installer ensureRecentMetacello.

Then run this code in your workspace:
```Metacello new
  baseline: 'Liquid';
  repository: 'github://hpi-swa-teaching/Liquid:main/packages';
  load.

### If you want to use Liquid, here is a quick introduction:
In your Squeak Workspace run:
```LiquidStartMenu open.

There you should be able to choose between the "Participant" and "Host" View.
If you want to create a poll and run it, close a poll or show the results of a running poll choose "Host". For creating a poll, click "create poll" then type in your Question in the Header of the window.
Every newline in the box under the question is a possible answer, so be sure to keep every answer on its own line.
On the bottom you can run your poll and give it an id. Keep the id, it is used to access the poll and its results.
If you want to close a poll click "close poll" in the host menu. After entering the poll id of the runing poll you want to close, nobody should be able to send new answers.
For the poll results, press "Show results" and put in the respective poll id.

Participants can choose the "Participant" button in the Start Menu. Enter the Poll id of the poll you want to participate in. Choose an answer or multiple answers and push the send button.


## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/richardschiemenz"><img src="https://avatars.githubusercontent.com/u/61618635?v=4?s=100" width="100px;" alt=""/><br /><sub><b>richardschiemenz</b></sub></a><br /><a href="https://github.com/hpi-swa-teaching/Liquid/commits?author=richardschiemenz" title="Documentation">📖</a></td>
    <td align="center"><a href="https://github.com/Shieka"><img src="https://avatars.githubusercontent.com/u/57802017?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Shieka</b></sub></a><br /><a href="https://github.com/hpi-swa-teaching/Liquid/commits?author=Shieka" title="Documentation">📖</a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!