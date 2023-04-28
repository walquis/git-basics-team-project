# Intro to `git rebase`
"Replay a series of commits onto a starting point".  When might this be useful?

A couple of common scenarios:

## Avoid Unnecessary Merge Commits
**Scenario**: You are working on a shared branch.  You make some commits, but then realize you haven't first "caught up" (i.e., `git pull`) with what's been going on remotely.  (A common way to "realize" this is to attempt to push, and get rejected).

A variation of this scenario is that you were caught up when you started working, but in the meantime someone else has pushed.

You can do a `git pull` now, which will result in a merge.  But merging for no good reason is probably not a very good option.  In other words, if you'd started with `git pull`, there would be no merge commit.  

Fortunately, if you want a more linear history, a single `git rebase` command will allow this.  Simply `git fetch` (which updates your local git repo with news from the remote), and then `git rebase` onto the tip of the branch you're tracking.

For instance, if you're working on `main`, and then realize `origin/main` is ahead of you, you can do something like this to re-home your local `main` to the latest `origin/main`:
```
$ git fetch  # Update your local origin/main pointer
$ git rebase origin/main  # Replay your changes on top of where origin/main is now
```
> [Robust discussion](https://stackoverflow.com/questions/804115/when-do-you-use-git-rebase-instead-of-git-merge) happens around what constitutes a "good reason" for a **merge** versus a **rebase**.  Some considerations:
> 1. Is there a chance the change on the branch will be rolled back?  Then merge.
> 1. Would it be useful to refer back to the branch in the future (i.e., to diff it)?  Then merge.
> 1. Are there remote dependencies on the branch? Then merge.
> 1. Is the branch not remarkable in any way?  Then rebase for a linear history.
> 1. Want to minimize the commits with "Merge branch `main` into ..." messages? Then _rebase_ your feature branch **onto** your base branch, and _merge_ your feature branch **into** your base branch.
>
> 🤔 What is meant by this statement? "_Rebase is a destructive operation._"


### LAB - Simulate the above scenario and practice resolving it with `git rebase`:
> 1. Checkout a branch that starts 3 or four commits before `main`. _Hover [here](./doesnotexist.jpg, "See the git-checkout docs and 'start-point' option") for a hint._
> 1. Make a couple of commits on that branch.
> 1. Then use `git rebase` to replay those commits onto `main`.

## Interactive rebase (`git rebase -i`) -- Edit Commit History Before Pushing

### LAB
> Make 3 or 4 commits on current branch, and squash/rearrange with `git rebase -i`.

