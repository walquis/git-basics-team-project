# Common Git Workflows

## A Sample Collaborative Workflow - Task branch from 'main'
You will find a dizzying variety of workflows out there, but at some point they pretty much all boil down to pulling in your team's changes, merging them with your own, and delivering them back to the team.

Here's one way to accomplish it: Start and work on a local `main` branch that tracks the remote `origin/main`, where your team will deliver integrated changes.

1. `git checkout main` - The branch from which you will push changes.
1. `git pull origin main` - Catch your local `main` up with latest changes from your team.
1. Implement your feature and test it.
1. Git-add and git-commit your changes on your local `main`.
1. `git pull origin main` (in case more changes have been pushed by teammates while you were working).
1. (If there *are* more changes, merge 'em in from main.  Then tell your team to hold off, it's your turn now!).
1. `git push origin main` - Share your scintillating creativity with your team by "catching-up the remote `origin/main` to your `main`.

## Forgot to pull before committing
This workflow is very common for me!  (Another variation of this workflow is "started-my-work-on-wrong-branch".)

It typically goes like this: 
1. I cd into a repo workspace that I already have cloned, but haven't touched in awhile.
1. I make some changes and commit.
1. I 'git push'
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

You can re-enact this scenario in our own repo, by moving your local main branch to one commit behind origin/main.  (How would you do that?)

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
This is easier than cherry-pick, especially if I've made multiple changes.

## Resolve Merge Collision
Let's experiment with making a merge collision happen: Branch, make a change that will collide, commit and try to merge.

1. First, find a change to collide with.  Looking at the latest commit on main, choose a file and a line in that file with which to collide:
```
$ git checkout main
$ git show
```
1. Checkout a new branch `test` _from the parent commit_ of main's head.
```
$ git checkout -b test HEAD^
```
1. Edit a file \<somefile> that was also changed on main.

   Change the **same line** in that file (but to something different than was done on main).
1. `git add`, `git commit`
1. Attempt to merge from main.
```
$ git config --global core.editor "code --wait"  # Set git editor to vscode (only need to do this once)
$ git merge main
Auto-merging <somefile>
CONFLICT (content): Merge conflict in <somefile>
Automatic merge failed; fix conflicts and then commit the result.
$ git status
$ code <somefile>
```

Git has modified our source file!

Note that vscode has added some helpful "phantom text"\--'(Current Change)' and '(Incoming Change)'\--to help clarify what's what. Note also, **that text isn't part of the file**.

When you've decided what the file should look like, 'git add' to tell git it's OK now (as git itself tells you when you do 'git status').

Then finish the merge with a 'git commit' (again, as 'git status' instructs)..

## Save Current Work and Return to it Later
```
$ git stash  # Push current work--your index and modified stuff--onto a "stash stack".
$ git status # Now your workspace is clean (except for files that aren't in git).
$ git checkout -b someNewBranch   # Or some existing branch
[Do the work that has pre-empted you, commit/push/etc, and now return to your story]...
$ git checkout main
$ git stash pop  # Restore your current work to this workspace
$ git stash list # See if anything still on the stash stack.
```

## Clean Up Commit History Before Pushing - [git rebase](https://git-scm.com/book/en/v2/Git-Branching-Rebasing){:target="_blank"} 

This is another instance of using git to practice good communication etiquette.  Nobody wants to see my stumbling around; they just want to see the final draft.

Assuming I've made a series of commits I don't want people to see, I can turn them all into one commit, **while still keeping the same content**!

(You may first want to set your git editor to vscode, as demonstrated above in "Resolve Merge Collision").

```
$ git config --global core.editor "code --wait"  # Set your editor to vscode
$ git rebase --interactive <some-commit-before-the-commits-to-fix>
```
See the [git rebase](https://git-scm.com/book/en/v2/Git-Branching-Rebasing){:target="_blank"} tutorial for details on how to work thru the rebase.

## Find a Bad Commit - [git bisect](https://git-scm.com/book/en/v2/Git-Tools-Debugging-with-Git){:target="_blank"}

Sometimes when a bug creeps in, it's hard to find where it happened.  `git bisect` helps you walk through a range of commits in a binary search.

```
$ git help bisect   # You can also 'git help' any other git command.
$ git bisect start <known-bad-commit> <older-known-good-commit>
[Test the code in your workspace to see if the current version is good.]
$ git bisect good # Or bad, if the test fails
[Git will keep iterating until the bad commit is identified.]
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

## Miscellaneous
- 'git show' - By default, shows diff of HEAD vs previous commit.  Can 'git show' any SHA.
