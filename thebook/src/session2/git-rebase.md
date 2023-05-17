# Intro to `git rebase`

**Rebase**: "Replay a series of commits onto a starting point".

When might this be useful?  Situations for which `git rebase` is the solution often fall into two general categories:
1. Avoiding unnecessary merge commits _after fetching_.
1. Editing your commit history locally _before pushing_.

## After fetching - Avoiding Unnecessary Merge Commits
Why does it matter whether or not a commit is expressed as a merge?  Generally, there should be a good reason for the merge.  Just because you **can** merge, it doesn't always mean you **must** merge.

> There is [Robust discussion](https://stackoverflow.com/questions/804115/when-do-you-use-git-rebase-instead-of-git-merge) around what constitutes a "good reason" for a **merge** versus a **rebase**.  Some considerations:
> 1. Is there a chance the change on the branch will be rolled back?  Then **merge**.
> 1. Would it be useful to refer back to the branch in the future (i.e., to diff it)?  Then **merge**.
> 1. Are there remote dependencies on the branch? Then **merge**.
> 1. Is the branch not remarkable in any way?  Then **rebase** for a more linear history.
> 1. Want to minimize the commits with "Merge branch `main` into ..." messages? Then **rebase** your feature branch _onto_ your base branch (e.g., `main`), and **merge** your feature branch _into_ your base branch.
>

**Scenario**: You were in sync with `origin/some-shared-branch` when you started working, but now you discover when delivering your changes that someone else has pushed, and your `git push` is rejected.

You can do a `git pull` now, which will result in a merge[^merge-default].
But merging for no good reason is not a very good option.  Assuming you and your team don't need to record every time one of you sync's up with the remote, then you're in step with consideration 5 above, "Minimize 'Merge branch X into Y' messages".

A `git rebase` will "catch you up" without a spurious merge.  Simply `git fetch` to update your local git repo with news from the remote, and then `git rebase origin/some-shared-branch`, which re-anchors (or "re-bases") your local `some-shared-branch` to the tip of the `some-shared-branch` you're tracking w.r.t. the remote called `origin`.

For instance, if you're working on `main`, and then realize `origin/main` is ahead of you, you can do something like this to re-home your local `main` to the latest `origin/main`:
```
$ git fetch  # Update your local origin/main pointer
$ git rebase origin/main  # Replay your changes onto where origin/main is now
```
> 🤔 What is meant by this statement? "_Rebase is a destructive operation._"


#### LAB - Simulate the "after-fetch" scenario and resolve it with `git rebase`.
> 1. Create a branch that branches from a commit 3 commits before `main`, and checkout onto that branch. _Hover [here](./doesnotexist.jpg, "See the git-checkout docs and 'start-point' option") for a hint._  That commit is the **base** of your branch.
> 1. Make a couple of commits on that branch.
> 1. Use `git rebase` to replay your commits onto `main`...that is, "re-base" your branch to start from where `main` is, giving your branch a new **base** commit.

# Before Pushing - Editing commit history with `git rebase -i`

Another set of `git rebase` operations involve editing your commit history _before pushing_, rather than _after fetching_.

If you're familiar with `git cherry-pick`, you can think of rebase as a series of cherry-pick operations; for each cherry-picked commit, git uses the merge machinery to apply the changes implied by that commit.

**Scenario**:  You've made lots of local commits, and want to "clean up" before pushing to the remote.  The most common clean-up operations include:

- Squashing commits into fewer commits (with no change in content)
- Rewording a comment
- Removing a commit
- Reordering commits

#### LAB - Edit commit history with `git rebase -i` before pushing.
(You won't actually push anything to a remote in this lab, but just practice getting ready to do so).

As you work, be sure to make liberal use of `adog` and `git show` to keep track of where you are with your changes and what is happening to your git history as you rebase.
> 1. Commit a change that has a typo.  For instance, edit the heading in `index.html` to be "The Hole Solar System".
> 1. Commit a fix to the first typo, but another typo.  For instance, "Teh Whole Solar System".
> 1. Commit fix to the second typo: "The Whole Solar System".
> 1. Commit an entirely unnecessary change.  For instance, in `index.html`, add an HTML comment on line 1: `<!-- this line is entirely unnecessary -->`.
> 1. Commit a change not related to the previous ones.  For instance, add text to `help.html`: `<p>Of all the help topics there are, this is one of them</p>.`
> 1. Run `git rebase -i HEAD~5`.
> 1. Referencing the instructions `git rebase` helpfully includes as comments, squash your three typo commits into one commit that doesn't contain any record of the typos.
> 1. Run `git rebase -i HEAD~3`.
> 1. This time, remove the 'entirely unnecessary change' commit.
> 1. Run `git rebase -i HEAD~2`.
> 1. Now, move the most recent commit earlier in the commit list.

Note as you do this that you are not changing any commits that fall on or before where tracking branches (e.g., `origin/main`) are pointing.  That is because the branches pointing to these commits have already been shared beyond your repo, and changing them after that fact would immediately make things complicated and messy for anyone else using them.

---
[^merge-default] By default, that is. The default `git pull` behavior for a repo can be changed to **rebase** instead of **merge** by running `git config pull.rebase true`.
