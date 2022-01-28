# Common Git Workflows

## A Sample Collaborative Workflow - Task branch from 'master'
You will find a dizzying variety of workflows out there, but at some point they pretty much all boil down to pulling in your team's changes, merging them with your own, and delivering them back to the team.

Here's one way to accomplish it: Start and work on a local `master` branch that tracks the remote `origin/master`, where your team will deliver integrated changes.

1. `git checkout master` - The branch from which you will push changes.
1. `git pull origin master` - Catch your local `master` up with latest changes from your team.
1. Implement your feature and test it.
1. Git-add and git-commit your changes on your local `master`.
1. `git pull origin master` (in case more changes have been pushed by teammates while you were working).
1. (If there *are* more changes, merge 'em in from master.  Then tell your team to hold off, it's your turn now!).
1. `git push origin master` - Share your scintillating creativity with your team by "catching-up the remote `origin/master` to your `master`.

## Forgot to pull before committing
This workflow is very common for me!  Another variation of this workflow is "started-working-on-wrong-branch".  Both have the same basic solution: Get to the right place, and then cherry-pick the change(s).

It typically goes like this: 
1. I cd into a repo workspace that I already have cloned, but haven't touched in awhile.
1. I make some changes and commit.
1. I 'git push'
1. Git rejects my updates with something like:

<blockquote>
<span style="color:red">! [rejected]</span> &nbsp; &nbsp; &nbsp; <span style="color:green">master -> master (non-fast-forward)</span><br>
<span style="color:red">error: failed to push some refs to 'git@github.com:walquis/learning-git'</span><br>
<span style="color:gold">hint: Updates were rejected because the tip of your current branch is behind<br>
hint: its remote counterpart. Integrate the remote changes (e.g.<br>
hint: 'git pull ...') before pushing again.<br>
hint: See the 'Note about fast-forwards' in 'git push --help' for details.<br>
</span>
</blockquote>

Let's re-enact this scenario in our own forked repos.  Let's start by moving our local master branch to one commit behind origin/master.  (How would we do that?)

Now change a file (e.g., add a line to git-aliases.sh), and add/commit/push.

What happened? What now?

A couple of options:
1. Pull-and-merge - valid, but creates a merge for no good reason - messy graph, confuses your team
1. Reset, pull, cherry-pick - makes the graph like you want it

```
$ git reset --hard HEAD^
$ git pull
$ git cherry-pick <sha-of-commit-you-couldn't-push>
```

## Resolve Merge Collision

Let's make a merge collision happen: Branch, change the same line of a file, commit and try to merge.

1. First, find a change we want to collide with.  How about master?
```
$ git show # How about the .gitignore change?
```
1. Checkout a new branch that will lead to a collision (which commit should we branch from?)
1. Make a change that will collide (i.e., to line 5 in .gitignore).
1. Attempt to merge from master.
```
$ git config --global core.editor "code --wait"  # Set your editor to vscode
$ git merge master
Auto-merging .gitignore
CONFLICT (content): Merge conflict in .gitignore
Automatic merge failed; fix conflicts and then commit the result.
$ git status
$ code .gitignore
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
$ git checkout master
$ git stash pop  # Restore your current work to this workspace
$ git stash list # See if anything still on the stash stack.
```

## Clean Up Commit History Before Pushing - [git rebase](https://git-scm.com/book/en/v2/Git-Branching-Rebasing){:target="_blank"} 

This is another instance of using git to practice good communication skills.  Nobody wants to see my stumbling around; they just want to see the final draft.

Assuming I've made a series of commits I don't want people to see, I can turn them all into one commit, **while still keeping the same content**!

(You may first want to set your git editor to vscode, as described above in "Resolve Merge Collision").

```
$ git config --global core.editor "code --wait"  # Set your editor to vscode
$ git rebase --interactive <some-commit-before-the-commits-to-fix>
```
See the [git rebase](https://git-scm.com/book/en/v2/Git-Branching-Rebasing){:target="_blank"} tutorial for details on how to work thru the rebase.

## Find a Bad Commit - [git bisect](https://git-scm.com/book/en/v2/Git-Tools-Debugging-with-Git){:target="_blank"}

Sometimes a bug creeps in and it's hard to find where it happened.

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
- 'git show' - By default, HEAD's diffs vs previous commit.  Can 'git show' any SHA.
