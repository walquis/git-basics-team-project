# Syllabus for Collaborating with git

Another name for this session could be "Three Objects and Three Trees".
 
## Overview

We will learn git's data model, consisting of three objects.  We will learn git's local-change-management model, which manipulates three trees.  In the course of running a collaborative software development exercise, We will use git commands to examine the state of git objects on these trees, and move them back and forth.  Some of these commands may be familiar (e.g., 'git checkout', 'git add', 'git commit', 'git status', 'git diff') and some may not ('git reset', 'git diff \--staged').

### Goals

1. Understand the git data model (__The Three Objects__) well enough to describe a git commit in terms of its objects.
1. Understand the local state of your latest changes well enough to move them between __The Three Trees__ with basic git commands such as 'git add', 'git commit', and 'git reset'.
1. Gain a deeper understanding of what familiar git commands (such as 'git merge') are accomplishing.
1. Know how your chosen workflow should change the commit graph, and use git commands to make it so.
1. Gain confidence to make changes knowing that git has your back.
 
### Objectives

By the end of this course, students will be able to...

#### Demonstrate these skills:
* Add/commit/push changes
* Resolve merge collisions from 'git pull'
* Stash work and return to it
* Undo a commit with 'git reset'

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
* [git bisect](https://git-scm.com/book/en/v2/Git-Tools-Debugging-with-Git){:target="_blank"} - find a bad commit
 
#### Identify and explain these components of a repo graph (as seen with "git log \--all \--decorate \--oneline \--graph"):
- HEAD
- master
- origin/master
- shas
- the lines along the left side
- branch/merge points

## Three Objects

Git is a brilliantly simple data model surrounded by a dense constellation of commands and options.  Once you know the model, you know how the graph should look.  Then you are equipped to find the command that does want you want.

See [Git Objects](https://git-scm.com/book/en/v2/Git-Internals-Git-Objects){:target="_blank"}.

- __Commit__ and its attributes
- __Tree__ and its attributes
- __Blob__ and its attributes

## Three Trees

The word "reset" is loaded with so many connotations that it is nearly meaningless.  For the purposes of this session, you can read "reset" as "set-current-branch-to-a-commit".  We'll explore how this works for managing local changes.

See [Reset Demystified](https://git-scm.com/book/en/v2/Git-Tools-Reset-Demystified){:target="_blank"}.

These are the three trees:

- HEAD - pointer to the current branch, which points to a commit
- Index - the place you add to; the staging area for commits
- Workspace - the files checked out on disk (not including the git repo itself - that would be too meta)
