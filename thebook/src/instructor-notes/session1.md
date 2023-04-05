# Session 1

## Setup
- Ppl will need to authenticate with a Personal Access Token, since they (probly) don't have SSH keys set up.
- Make sure everyone is set up in their project team.
- Prework: Ask ppl for red/green reactions w.r.t. completion.
- If most ppl haven't done it, go over the setup parts.

## The Simplest Possible Collaborative Git Workflow
DESCRIBE the workflow embodied by the pull-merge-push diagram.
- Context: 'their repo' and 'my repo' are cloned from the remote labeled 'origin' (that is, Github).

POINTS TO MAKE:
- `git pull` is a combination of `git fetch` and `git merge`.
- Walk through a 'fast-forward' merge (which is what the 'git push' accomplishes from Github's perspective).
- a `git pull` from one side looks and mostly works like a `git push` from the other side (i.e. a "fetch" and a "merge").
- Talk about what the arrows on the diagram represent: NOT arrow-of-time!  They point *backward*, because they represent the commit's "parent" field(s), which points to the previous commit (or commits).  This is how git draws its graphs, starting with a branch, and why commits are generally not visible when no more branches are pointing to them.

SKETCHING EXERCISE: Walk with the class through the process of placing the `main` and `origin/main` branch labels corresponding with each operation:
1. "Where do the branch labels start out when 'my repo' and 'their repo' are cloned?" (everything at the green commit).
1. "Which branch labels move when 'they' make a change and commit?" (only `main` in 'their repo').
1. "Which branch labels move when 'they' push?" (their local `origin/main`; Github's `main`).
1. "What makes branch labels move in 'my repo'?" (`git pull`).
1. "What is the sequence of branch label movements in 'my repo' when I do 'git pull'? (`origin/main` moves to blue commit; git does the merge and moves `main` to the merge commit).
1. "What branch labels would move in 'my repo' if I did `git fetch` instead of `git pull`?"  (Just `origin/main`; NOT `main`).
1. "What branch labels move when I push from 'my repo'? (`main` on the origin).
1. "Does Github do a merge when I push?" (No, I've already done the merge locally; it only updates its branch pointer and commits--including the merge commit--associated with the branch I'm pushing.) 

🤔 What is the difference between a merge commit, and a commit that has a merge conflict?
DISCUSS:
- Is a merge automatically a conflict? No.
- What is a merge commit? A commit with 2 or more parents.
- What is a merge _conflict_? A merge (or rebase--we'll learn about rebase later) in which git cannot decide which change to take.

#### LAB - Simplest Possible Collaborative Git Workflow
- Ask ppl for red/green reactions w.r.t. completion.

DISCUSS:
- What was your impression of the collaborative experience?
- What was difficult?
- Any ideas about how it might be made smoother, or better in other ways?

- **Time for a break?***

### Anatomy of a Git Commit, or, "The Three Objects"

POINTS TO MAKE:
- Git has your back!  Commits (and other sha objects) don't go away when you stop referring to them; they're still in the repo.
- Discuss "Content-addressable".  _What happens when a commit's information changes?_  Its address changes.
  - Reference the commit/tree/blob pic.

🤔 Is it possible for a commit to have the same SHA as its parent?
DISCUSS:
- What would have to be true for this to be the case? (All info in each commit must be identical).
- A commit's `parent` field is part of that info.

- LAB: Ask ppl for red/green reactions w.r.t. completion of the lab.


## Your Local Git Repo and the 3 Trees, or, Intro to `git reset`

POINTS TO MAKE:
- Git has your back (again).
  - `git reflog` lets you retrace your steps.
  - `git stash` lets you switch contexts quickly.
- `git reset` is a local-only command.

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

## Create And Resolve Merge Conflicts - Using Branches and PR's
TERMS:
- branch

COMMANDS:
- `git branch`

DISCUSS: 🤔 Why is it called a "**Pull** Request", if you're **pushing** changes?
- Back in the day, with Github's original fork/pull model, an actual `git pull` happened when the request was granted, since multiple remote repos were involved: the source repo and its fork.  A `git pull` fetched-and-merged the changes from the forked repo to its source repo.
- In the shared-repo model however, no `git pull` is involved, since you've already pushed your changes to the source repo (although on a different branch).  However, you *are* still "requesting" for your changes to be "pulled" into the main development stream; so in a logical sense, it's still a "request for a pull".


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


