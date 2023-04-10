# Breakdown of Simple Collaborative Workflow
This sequence of images represents the progression of a workflow where my teammate first makes a change locally and pushes, and then I also make a change locally--but now must integrate with their change (via a `git pull origin main`) before I too can push.

(Note that the images are arranged such that you can move back and forth between them with right and left arrow keys and visually compare the changes between steps.)
## Step "0" - Collaboration Setup
When you and your teammates first `git clone` a shared repo--something like this...
```
$ git clone https://github.com/org-or-user/the-team-repo   # Make local copy of repo
$ git checkout main   # Point HEAD at "main"...i.e., make "main" your current branch
```
...then you'll all start with the same understanding of where branch `main` is.
### Clone - [After both of us have cloned](./step0.md)
The green circle represents this common understanding.

The
<span class="hljs" style="color:red">origin/main</span>
branch, seen in both local repos, is a "tracking branch". git uses it to track which commit the `main` branch is pointing to, on the remote called "origin".  As you will see, this tracking function is not "live";
<span class="hljs" style="color:red">origin/main</span>'s
value _in your repo_ is updated only when you perform certain activities--mainly `git push` and `git pull`.
### Local Commit - [After your teammate does add/commit](./step1.md)
To kick-off collaboration in this illustration, your teammate does some local work worthy of sharing--the commit represented by the pink circle.
## Step 1 - They push `main` to the remote named 'origin'
Now they push their work, with something like this:
```
$ git push origin main
```
### [Result of their push](./step2.md)
Notice the two main changes:
1. The pink commit has been copied to the remote named 'origin'.
1. The remote's `main` branch has been updated to reflect the new work--and correspondingly, your teammate's local
<span class="hljs" style="color:red">origin/main</span>
tracking branch is updated as well.

Note also that nothing happens in my local repo as a result of their push.

## Step 2 - I pull their changes from the remote named 'origin'
OK, now it's my turn.
### [My local commit (before I've talked w/'origin')](./step3.md)
I've also made some changes locally; my commit is represented by the blue-ish circle.

(Note that my 
<span class="hljs" style="color:red">origin/main</span>
tracking branch has not yet moved, because I've not yet run any commands that reach out to the remote.)

### [2.1 - First half of `git pull origin main` consists of fetching commits & branch pointers](./step4.md)
I now pull, by running something like this, to see if there are changes to integrate (as indeed there are):
```
$ git pull origin main
```
A `git pull` is a two-phase operation (essentially it's a mirror image of `git push`).  The first phase is to update my repo with news of commits and branches from the remote.  This is called a "fetch" and in fact can be run explicitly.  The second phase is "merge", and can also be run explicitly as it often is.  So, a pull amounts to these two commands:
```
$ git fetch origin main  # Grab commits associated with current branch, and update tracking branch
$ git merge origin/main  # Merge into my current branch from the (now-up-to-date) tracking branch
```

### [2.2 - Second half of my `git pull origin main` consists of merging from origin/main](./step5.md)
As mentioned, the second half of a `git pull` is a merge operation; the merge commit is represented by the grayish circle.

By definition, a merge commit is a commit with two or more parents.

A merge may be automatic, or it may result in a conflict; we'll cover conflicts later in this course.


## Step 3 - [Now I push my commits on `main` branch to 'origin')](./step6.md)
Now that I've done the work to integrate the changes, I can push them back to the remote:
```
$ git push origin main 
```
Now I'm all caught up, and the remote is caught up.

Notice the changes that happen:
1. Two commits are sent to the remote: My original local commit, and the merge commit.
1. The remote's `main` branch has been updated to reflect the new work--and correspondingly, your teammate's local 
<span class="hljs" style="color:red">origin/main</span>
tracking branch is updated as well.  In other words, the same process happened for me when I pushed, as happened for them when they pushed.

As before, my push updates the remote (that is "origin", which happens to be Github), but it does **NOT** update my anything in my teammate's repo.  That would require explicit activity on their part.


Now _they_ are behind!  How would they catch up?
