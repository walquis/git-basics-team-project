# Common Git Workflows

## A Basic Workflow - everybody do their work on `main`
A dizzying variety of workflows exist, but at some point they pretty much all boil down to (a) merging your team's changes with with your own, and (b) delivering them back to the team.

Here's one way to accomplish it: Work on a local `main` branch that tracks the `main` of your remote, i.e., `origin/main`[^remote-name], where your team will rendezvous with changes.

1. `git checkout main` - Get onto the branch from which you will push changes.
1. `git pull origin main` - Catch your local `main` up with latest changes from your team.
1. Implement your feature and test it.
1. `git add` and `git commit` your changes on your local `main`.
1. `git pull origin main` (in case more changes have been pushed by teammates while you were working).
1. If there *are* changes from "upstream", a merge will happen (you may need to resolve conflicts).
1. `git push origin main` - Share your scintillating creativity with your team by "catching-up the remote `origin/main` to your `main`.  (If someone else pushed first--since your last `git pull`--you'll have to `git pull` again.  Then beg your team to hold off, it's your turn now!)

## A Pull Request Workflow
Instead of working-on/pushing `main`, create/work-on/push a feature branch, and ask someone to look at it before it joins `main`.

1. `git checkout main` - The branch from which you will branch.
1. `git checkout -b myfeature` - Create and checkout a new `myfeature` branch.
1. Implement your feature and test it; add and commit your changes on `myfeature`.
1. `git push origin myfeature` - Make your `myfeature` branch visible to the team.
1. Go to Github and create a **Pull Request (PR)** for `myfeature`.  Choose one or more reviewers.
1. The reviewers look at your diffs, optionally make comments, and approve & merge `myfeature` to `main`.
1. `git checkout main` - Go back to main so you can catch up.
1. `git pull` - Grab the latest changes, including your merged PR.

## Resolve Merge Conflict
Merge conflicts (aka "collisions") happen whenever git's merge algorithm does not have enough info to make the call--for instance, when a given line in a file has been changed in different ways by two parent commits.

Let's make the above-described kind of merge conflict happen:

1. First, make a change to conflict with, by adding a file with one line:
```
$ git checkout main
$ git show
$ echo "HI THERE" > aNewFile
$ git add aNewFile
$ git commit -m "A new file with one line"
```
1. Checkout a new branch `test` _from the parent commit_ of main's HEAD.
```
$ git checkout -b test HEAD^
```
1. Make a one-line file of the same name as the one created on main.
```
$ echo "HI THERE, I'm on a different branch" > aNewFile  # Because on this branch, starting from where we did, aNewFile isn't there yet.
$ git add aNewFile
$ git commit -m "A new file with one line, but from a different branch"
```
1. Now, attempt to merge from main.
```
$ git config --global core.editor "code --wait"  # Set git editor to vscode (only need to do this once)
$ git merge main
Auto-merging aNewFile
CONFLICT (add/add): Merge conflict in aNewFile
Automatic merge failed; fix conflicts and then commit the result.
$ git status
$ code aNewFile
```

Git has modified our source file!

Note that VSCode has added some helpful "phantom text"\--'(Current Change)' and '(Incoming Change)'\--to help clarify what's what. Note also, **that text isn't part of the file**.

When you've made the file how you want it, and saved it, `git add` to tell git it's OK now (as git itself tells you when you do `git status`).

Finally, finish the merge with a `git commit` (again, as `git status` instructs)..

## Save Current Work and Return to it Later
```
$ git stash  # Push current work--your index and modified stuff--onto a "stash stack".
$ git status # Now your workspace is clean (except for files that aren't in git).
$ git checkout -b someNewBranch   # Or some existing branch
# Do the work that has pre-empted you, commit/push/etc, and now return to your story...
$ git checkout main
$ git stash pop  # Restore your current work to this workspace
$ git stash list # See if anything still on the stash stack.
```

## Clean Up Commit History Before Pushing - [git rebase](https://git-scm.com/book/en/v2/Git-Branching-Rebasing) 

This is another instance of using git to practice good communication etiquette.  Nobody wants to see my stumbling around; they just want to see the final draft.

Assuming I've made a series of commits I don't want people to see, I can turn them all into one commit, **while still keeping the same content**!

(You may first want to set your git editor to vscode, as demonstrated above in "Resolve Merge Collision").

```
$ git config --global core.editor "code --wait"  # Set your editor to vscode
$ git rebase --interactive <some-commit-before-the-commits-to-fix>
```
See the [git rebase](https://git-scm.com/book/en/v2/Git-Branching-Rebasing) tutorial for details on how to work thru the rebase.

## Forgot to pull before committing
This workflow is very common for me!

Another variation of this workflow is "started-my-work-on-wrong-branch".

It typically goes like this: 
1. I cd into a repo workspace that I already have cloned, but haven't touched in awhile.
1. I make some changes and commit.
1. I `git push`.
1. Git rejects my updates with something like:

<blockquote>
<span style="color:red">! [rejected]</span> &nbsp; &nbsp; &nbsp; <span style="color:green">main -> main (non-fast-forward)</span><br>
<span style="color:red">error: failed to push some refs to 'git@github.com:walquis/learning-git'</span><br>
<span style="color:gold">hint: Updates were rejected because the tip of your current branch is behind<br>
hint: its remote counterpart. Integrate the remote changes (e.g.<br>
hint: 'git pull ...') before pushing again.<br>
hint: See the 'Note about fast-forwards' in 'git push --help' for details.<br>
</span>
</blockquote>

You can re-enact this scenario in your own repo, by moving your local `main` branch to one commit behind `origin/main`.  (How would you do that? Hover [here](doesnotexist.jpg, "git reset --hard HEAD^") to see.)

Now change a file and git add/commit/push.

What happened?  Your main has diverged from origin/main.

What now?  Some options:
1. Pull-and-merge - valid, but creates a merge for no good reason - messy graph, confuses your team
1. Reset, pull, cherry-pick - makes the graph look like you want it to
```
$ git reset --hard @^     # Tip: '@' is a synonym for HEAD
$ git pull
$ git cherry-pick <sha-of-commit-you-couldn't-push>
```
1. Git rebase - "Replay" changes onto another commit
```
$ git fetch         # Remember, 'pull' is a fetch and merge...but I don't want to merge this commit
$ git rebase origin/main    # Replay current branch's changes onto origin/main
```
This is easier and more straightforward than cherry-pick, especially if I've made multiple changes.

## Find a Bad Commit - [git bisect](https://git-scm.com/book/en/v2/Git-Tools-Debugging-with-Git)

Sometimes when a bug creeps in, it's hard to find where it happened.  `git bisect` helps you walk through a range of commits in a binary search.

```
$ git help bisect   # You can also 'git help' any other git command.
$ git bisect start <known-bad-commit> <older-known-good-commit>
# Test the code in your workspace to see if the current version is good.
$ git bisect good # Or bad, if the test fails
# Git will keep iterating until the bad commit is identified.
...
$ git bisect reset  # Go back to the head of the branch
```

This is effective, but a little tedious.  What if we could automate it?  If you can create a test.sh script that git can run for you, which will exit with status 0 (true) if the test succeeds, and non-zero (e.g. 1, which will mean false), then git bisect can use that script:
```
$ bash test.sh
$ echo $?  # 0 if good, 1 if bad
$ git bisect start <known-bad-commit> <older-known-good-commit>
$ git bisect run bash test.sh
```

---
[^remote-name]: assuming your remote is named `origin`.  It probably is.
