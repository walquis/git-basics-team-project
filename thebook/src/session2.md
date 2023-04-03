## Session Two - Exercising your new git skills to run a project

### Where to Start?  With a Github project board!

[Demonstrate setting up a simple kanban board under a git org]

#### LAB - Start your project board
1. Team lead: Create a kanban project in your GitHub org, and invite your teammates.
1. Each teammate: Choose a task from this list of changes from the [sample project repo](https://github.com/walquis/git-basics-sample-project-repo), and create a card for it, with your name on it:
> - [Add a sun image](https://github.com/walquis/git-basics-sample-project-repo/commit/aa7f0ba34df76ddb38912f753457e07108a7c704).
> - [Begin to use CSS styling](https://github.com/walquis/git-basics-sample-project-repo/commit/da56c38e92e62408c1affd6c71e19ff87f0d93b6).
> - [Add a list of the first four planets to index.html](https://github.com/walquis/git-basics-sample-project-repo/commit/b4b184b40299ad852dd9cd51e0d4279f795ae98f).
> - [Add a solar system map](https://github.com/walquis/git-basics-sample-project-repo/commit/4119092cac8ccdeb1b4a3ad719a6cf87d3229502).
> - [Add faqs](https://github.com/walquis/git-basics-sample-project-repo/commit/5e1d8be4574fae345ac779bddc95f73dd0bf3cc0).
> - [Add some about text](https://github.com/walquis/git-basics-sample-project-repo/commit/4c461a996aad0fd5bfa420ac366139805bf334bf).
> - [Put padding/borders/margins around images](https://github.com/walquis/git-basics-sample-project-repo/commit/d0095aa699e00873c305d62ecd97727bcc4c5bba).

#### LAB - Each Team, Run your project
Spend about 45 minutes implementing the changes you have chosen, and integrating using Pull Requests.  If your team gets stuck, get an instructor's attention and we'll work on it together!

### Intro to `git rebase`
"Replay a series of commits onto a starting point".  When might this be useful?

A couple of common scenarios:

#### Rebase "onto" -- Avoid Unnecessary Merge Commits
If you find yourself making changes on a shared branch

Or, if you are working on the wrong branch, `git rebase` can help is a quick and effective tool for putting it right.

#### LAB - Make 3 or 4 commits on `main`, then use `git rebase` and `git reset` to put those commits on a separate branch, and squash/rearrange with `git rebase -i`

#### Interactive rebase (`git rebase -i`) -- Edit Commit History Before Pushing

#### LAB - Make 3 or 4 commits on current branch, and squash/rearrange with `git rebase -i`

### Intro to `git cherry-pick` -- if time
Somewhat like `git rebase`.  By default, only takes the one commit you specify and commits it to your current branch.

### Wrap-up

[link to feedback survey]

