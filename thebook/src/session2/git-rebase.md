# Intro to `git rebase`

(IN-PROGRESS)

"Replay a series of commits onto a starting point".  When might this be useful?

You can think of rebase as a series of cherry-pick operations; for each cherry-picked commit, git uses the merge machinery to apply the changes implied by that commit.

Situations for which `git rebase` is the solution often fall into two general categories:
1. Avoiding unnecessary merge commits _after fetching_.
1. Editing your commit history locally _before pushing_.

## After fetching - Avoiding Unnecessary Merge Commits
Why does it matter whether or not a commit is expressed as a merge?  Generally, there should be a good reason for the merge.  Just because you **can** merge, it doesn't always mean you **must** merge.

> [Robust discussion](https://stackoverflow.com/questions/804115/when-do-you-use-git-rebase-instead-of-git-merge) happens around what constitutes a "good reason" for a **merge** versus a **rebase**.  Some considerations:
> 1. Is there a chance the change on the branch will be rolled back?  Then **merge**.
> 1. Would it be useful to refer back to the branch in the future (i.e., to diff it)?  Then **merge**.
> 1. Are there remote dependencies on the branch? Then **merge**.
> 1. Is the branch not remarkable in any way?  Then **rebase** for a more linear history.
> 1. Want to minimize the commits with "Merge branch `main` into ..." messages? Then **rebase** your feature branch _onto_ your base branch (e.g., `main`), and **merge** your feature branch _into_ your base branch.
>

**Scenario**: You were caught up when you started working, but in the meantime someone else has pushed.

You can do a `git pull` now, which will result in a merge.  But merging for no good reason is probably not a very good option.  In other words, if you'd started with `git pull`, there would be no merge commit.  

Fortunately, if you want a more linear history, a single `git rebase` command will allow this.  Simply `git fetch` (which updates your local git repo with news from the remote), and then `git rebase` onto the tip of the branch you're tracking.

For instance, if you're working on `main`, and then realize `origin/main` is ahead of you, you can do something like this to re-home your local `main` to the latest `origin/main`:
```
$ git fetch  # Update your local origin/main pointer
$ git rebase origin/main  # Replay your changes on top of where origin/main is now
```
> 🤔 What is meant by this statement? "_Rebase is a destructive operation._"

Suppose you are working on a shared branch.  You make some commits, but then realize you haven't first "caught up" (i.e., `git pull`) with what's been going on remotely.  (A common way to "realize" this is to attempt to push, and get rejected).


#### LAB - Simulate the "after-fetch" scenario and practice resolving it with `git rebase`:
> 1. Checkout a branch that starts 3 or four commits before `main`. _Hover [here](./doesnotexist.jpg, "See the git-checkout docs and 'start-point' option") for a hint._
> 1. Make a couple of commits on that branch.
> 1. Then use `git rebase` to replay those commits onto `main`.

# Before Pushing - Editing commit history with `git rebase -i`

Another set of `git rebase` scenarios involve editing your commit history _before pushing_, rather than _after fetching_.

## Scenario:
Interactive rebase (`git rebase -i`) -- Edit Commit History Before Pushing


- squash commits into fewer commits (with no change in content)
- reword a comment
- remove a commit
- reorder commits

#### LAB
> Make 3 or 4 commits on current branch, and squash/rearrange with `git rebase -i`.

