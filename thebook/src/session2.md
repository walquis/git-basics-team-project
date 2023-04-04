## Session Two - Exercising your new git skills to run a project

### Where to Start?  With a Github project board!

[Demonstrate setting up a simple kanban board under a git org]

#### LAB - Start your project board
> 1. Team lead: Create a kanban project in your GitHub org, and invite your teammates.
> 1. Each teammate: Choose a task from this list of changes from the [sample project repo](https://github.com/walquis/git-basics-sample-project-repo), and create a card for it, with your name on it:
> - [Add a sun image](https://github.com/walquis/git-basics-sample-project-repo/commit/aa7f0ba34df76ddb38912f753457e07108a7c704).
> - [Begin to use CSS styling](https://github.com/walquis/git-basics-sample-project-repo/commit/da56c38e92e62408c1affd6c71e19ff87f0d93b6).
> - [Add a list of the first four planets to index.html](https://github.com/walquis/git-basics-sample-project-repo/commit/b4b184b40299ad852dd9cd51e0d4279f795ae98f).
> - [Add a solar system map](https://github.com/walquis/git-basics-sample-project-repo/commit/4119092cac8ccdeb1b4a3ad719a6cf87d3229502).
> - [Add faqs](https://github.com/walquis/git-basics-sample-project-repo/commit/5e1d8be4574fae345ac779bddc95f73dd0bf3cc0).
> - [Add some about text](https://github.com/walquis/git-basics-sample-project-repo/commit/4c461a996aad0fd5bfa420ac366139805bf334bf).
> - [Put padding/borders/margins around images](https://github.com/walquis/git-basics-sample-project-repo/commit/d0095aa699e00873c305d62ecd97727bcc4c5bba).

#### LAB - Each Team, Run your project
Spend about 45 minutes implementing the changes you have chosen, and integrating them using Pull Requests.  (Keep your board up-to-date).  If your team gets stuck, get an instructor's attention and we'll work on it together! 

### Intro to `git rebase`
"Replay a series of commits onto a starting point".  When might this be useful?

A couple of common scenarios:

#### Avoid Unnecessary Merge Commits
**Scenario**: You are working on a shared branch.  You make some commits, but then realize you haven't first "caught up" (i.e., `git pull`) with what's been going on remotely.  (A common way to "realize" this is to attempt to push, and get rejected).

A variation of this scenario is that you were caught up when you started working, but in the meantime someone else has pushed.

You can do a `git pull` now, which will result in a merge.  But merging for no good reason is probably not a very good option.  In other words, if you'd started with `git pull`, there would be no merge commit.  

Fortunately, if you want a more linear history, a single `git rebase` command will allow this.  Simply `git fetch` (which updates your local git repo with news from the remote), and then `git rebase` onto the tip of the branch you're tracking.

For instance, if you're working on `main`, and then realize `origin/main` is ahead of you, you can do something like this to re-home your local `main` to the latest `origin/main`:
```
$ git fetch  # Update your local origin/main pointer
$ git rebase origin/main  # Replay your changes on top of where origin/main is now
```
> [Robust debate](https://stackoverflow.com/questions/804115/when-do-you-use-git-rebase-instead-of-git-merge) happens around what constitutes a "good reason" for a **merge** versus a **rebase**.  Some considerations:
> 1. Is there a chance the change on the branch will be rolled back?  Then merge.
> 1. Would it be useful to refer back to the branch in the future (i.e., to diff it)?  Then merge.
> 1. Are there remote dependencies on the branch? Then merge.
> 1. Is the branch not remarkable in any way?  Then rebase for a linear history.
>
> 🤔 What is meant by this statement? "_Rebase is a destructive operation._"


#### LAB - Simulate the above scenario and practice resolving it with `git rebase`:
> 1. Checkout a branch that starts 3 or four commits before `main`. _Hover [here](./doesnotexist.jpg, "See the git-checkout docs and 'start-point' option") for a hint._
> 1. Make a couple of commits on that branch.
> 1. Then use `git rebase` to replay those commits onto `main`.

#### Interactive rebase (`git rebase -i`) -- Edit Commit History Before Pushing

#### LAB - Make 3 or 4 commits on current branch, and squash/rearrange with `git rebase -i`

### Intro to `git cherry-pick` -- if time
Somewhat like `git rebase`.  By default, only takes the one commit you specify and commits it to your current branch.

### Wrap-up

[link to feedback survey]

