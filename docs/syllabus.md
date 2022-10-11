# Syllabus for Collaborating with git

We will learn git's data model, __The Three Objects__.  We will learn git's local-change-management model, which manipulates __Three Trees__.  In the course of running a collaborative software development exercise, your project team will use git commands to examine the state of git objects on these trees, and move them back and forth.  Some of these commands may be familiar (e.g., `git checkout`, `git add`, `git commit`, `git status`, `git diff`) and some may not (`git reset`, `git diff --staged`).

### Goals
1. Gain confidence to make changes, by knowing specifics about how git has your back.
1. Know how to read the commit graph, and use git commands confidently to make it look like you want.
1. Understand how basic git commands such as `git add`, `git commit`, and `git reset` move the state of your local changes among __The Three Trees__.
1. Understand the git data model well enough to describe your git environment in terms of __The Three Objects__.
 
### Objectives

By the end of this course, students will be able to...

#### Demonstrate these skills:
* Work as a team to deliver changes to a chosen remote and branch
* Understand and resolve merge collisions
* Manage a commit with 'git reset'
* Stash work and return to it

#### Explain these terms and concepts:
* sha
* content-addressable filesystem
* blob, tree, commit
* workspace, index, HEAD
* symbolic ref
* branch
* remote
* fetch vs. pull
* fast-forward merge
* 'detached HEAD' state

#### Use these commands, and understand them in terms of the 3 objects/3 trees:
* git add
* git status
* git diff \[\--staged\]
* git commit
* git reset \[\--soft, \--mixed, \--hard \]
* git branch
* git merge
* [git stash](https://git-scm.com/book/en/v2/Git-Tools-Stashing-and-Cleaning){:target="_blank"} - "I need to save what I'm working on and come back to it later"
* git cherry-pick
* [git rebase -i](https://git-scm.com/book/en/v2/Git-Branching-Rebasing){:target="_blank"} - clean up commit history before pushing
* (stretch goal) [git bisect](https://git-scm.com/book/en/v2/Git-Tools-Debugging-with-Git){:target="_blank"} - find a bad commit
 
#### Identify and explain these components of a repo graph (as seen with "git log \--all \--decorate \--oneline \--graph"):
- HEAD
- master
- origin/master
- shas
- the lines along the left side
- branch/merge points

## Three Objects

Git is a brilliantly simple data model surrounded by a dense constellation of commands and options.  Once you know the model, you know how the graph should look.  Then you are equipped to find the command that does want you want.

[Git Objects](https://git-scm.com/book/en/v2/Git-Internals-Git-Objects){:target="_blank"} at git-scm.com is good reading.

- __Commit__ and its attributes
- __Tree__ and its attributes
- __Blob__ and its attributes

## Three Trees

The word "reset" is loaded with many connotations. In a git context, you can read `git reset` as "set-current-branch-to-an-existing-commit".  We'll explore how this works for managing local changes.

git-scm.com's [Reset Demystified](https://git-scm.com/book/en/v2/Git-Tools-Reset-Demystified){:target="_blank"} is also good reading.

These are the three trees:

- __HEAD__ - pointer to the current branch, which points to a commit
- __Index__ - the place you add to; the staging area for commits
- __Workspace__ - the files checked out on disk (not including the git repo itself - that would be too meta)
