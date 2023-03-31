# Instructor notes

## [Sample project repo](https://github.com/walquis/git-basics-sample-project-repo)
- Commits in this repo are a source for ideas of what kind of work teams can do.
- Ned, Nykhia, Dex, Deja, Xavier

## Overview

### Housekeeping items
- Take breaks every 30-45 minutes.
- At checkpoints, have the class use Zoom's green-checkbox and red-X "reactions" buttons.  For instance, "Who has your team's repo cloned locally?  Give me a green checkbox if yes, red-X if no."  _NOTE: Unlike the quick-reaction icons along the top, these responses will stay up until the students take them down._
- They can also use the "speed up" and "slow down" buttons.

# Session 1

## Setup
- Ppl will need to authenticate with a Personal Access Token, since they (probly) don't have SSH keys set up.
- Make sure everyone is set up in their project team.
- Prework: Ask ppl for red/green reactions w.r.t. completion.
- If most ppl haven't done it, go over the setup parts.

## Basic Collaborative Workflow
TERMS:
- remote
- fast-forward merge
- merge commit (has more than one parent commit)

COMMANDS:
- `git pull`
- `git add`
- `git commit`
- `git push`

POINTS TO MAKE:
- Describe the iterative workflow: pull/add/commit/push.
- [Reference the commit/pull/push pic].
- LAB: Ask ppl for red/green reactions w.r.t. completion.
- **Time for a break?***

## Anatomy of a Commit, or, The Three Objects
TERMS:
- sha
- content-addressable filesystem
- blob, tree, commit

COMMANDS:
- `git cat-file -p` - just for teaching purposes; not part of a normal workflow
- `git reflog`

POINTS TO MAKE:
- Git has your back.
  - sha's don't go away when you stop referring to them; they're still in the repo

Reference the commit/tree/blob pic.


- LAB: Ask ppl for red/green reactions w.r.t. completion of the lab.


## Local Git Repo and 3 Trees, or, Intro to `git reset`
TERMS:
- workspace, index, HEAD
- "detached HEAD" state
- `git diff`, `git diff --staged`
- `git reflog`
- `git stash`

POINTS TO MAKE:
- Git has your back (again).
  - `git reflog` lets you retrace your steps.
  - `git stash` lets you switch contexts quickly.

We've only used `git reset` to move our current branch back one commit.  But `git reset` will move our current branch anywhere we tell it.  When might this be useful?
- When re-arranging branches.  Suppose you made changes on `main`, but meant to branch first?  Just make the branch where you're at, and move `main` back to where it belongs (as long as you haven't pushed those changes yet).

- **Time for a break?***

Have a conversation about doing a `git reset` to something before `origin`; and relatedly, `git push -f` and its pitfalls.

## Create And Resolve Merge Conflicts - With Basic Workflow
TERMS:
- merge conflict
- `git fetch` vs. `git pull`

COMMANDS:
- `git branch`
- `git merge`
- `git fetch`
- `git pull` - it's a 2-part command

## Create And Resolve Merge Conflicts - Using Branches and PR's
TERMS:
- branch

COMMANDS:
- `git branch`

DISCUSS: Why is it called a "Pull REQUEST", if you're pushing changes?
- In the fork/pull model, an actual `git pull` happened when the request was granted, since multiple remote repos were involved: the source repo and its fork.  A `git pull` fetched-and-merged the changes from the forked repo to its source repo.
- In the shared-repo model, no `git pull` is involved, since you've already pushed your changes to the source repo (although on a different branch).  However, you *are* still asking for your changes to be "pulled" into the main development stream; so in that sense, it's still a "request for a pull".


# Session Two


## More workflow tools - `git rebase` and `git cherry-pick`
COMMANDS:
- `git rebase`
- `git cherry-pick`

### 9:30-10:30 a possible breakdown of tasks:

Deja - Change ‘Hello World!’ to ‘Hello Sol!’. Add a sun image.

Nykhia - Begin to use CSS styling. Change the font of headers.  [This will touch the layout, therefore everything!]

Dex - Add a list of first four planets to index.html, with content (images and/or summaries).  Couple of commits and pulls-from-main before delivering.

Put content in the pages:  (relatively independent changes)
- Xavier - A solar system map
- Ned - more help
- Nykhia - more faqs
- Dex - Add some more about text.


### Session 2, lab 4 - Run the project, work in teams...

- Xavier and Ned - Put padding/borders/margins around images.
  - Xavier - create the branch, make the CSS class
  - Ned - add the class references to the images
- Apply Caesar Dressing font to h1 HTML elements.
  - Nykhia - Update the head section in the layouts.
  - Dex - Define the CSS class for h1.
- Ned and Deja - Apply flex display to planets.
  - Ned - Make the CSS classes
  - Deja - Apply to the planets

