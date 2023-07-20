## The Three Trees and `git reset`
(excerpted from the [Objects and Trees Exercise](/objects-and-trees-exercise.md)).

### The Three Trees

Git manages your local changes using three trees: HEAD, Index, and Working Tree.

| **Tree** | **Role** |
| ---- | ---- |
| HEAD | The latest commit |
| Index | The commit-in-progress, aka "staging" |
| Working Tree | Your local filesystem (except for the .git directory itself |

You typically start by making changes in the __working tree__, which flow to the __index__ (aka "staging") via `git add`, and finally into the repo's commit history via `git commit` (that is, the branch pointed to by __HEAD__ moves to the next commit):


| __Tree:__ | **Working Tree** | **Index** | **HEAD** |
| --: | ---- | ---- | ---- |
| __Operation:__ | 1. \<make changes\> | 2. `git add` (stage changes) | 3. `git commit`

(Note that HEAD typically points to a branch name, not directly to a commit; this is what it means to be "checked out" on a branch.  So when `git commit` or `git reset` is used to move HEAD, they actually move _the branch to which HEAD points_).

See also this workflow diagram from [git-scm.com](https://git-scm.com/book/en/v2/Git-Tools-Reset-Demystified).  Notice that a `git checkout` updates _all three trees_:

![](https://git-scm.com/book/en/v2/images/reset-workflow.png)

### git reset

Sometimes you'll find it necessary to move changes the other way.  For instance, you may want to...
1. Add a forgotten file to the same set of already-committed changes,
2. Change a commit message, or
3. Revert a commit.

`git reset` can assist with all this and more.

**Why is it called "reset"?**  Because it resets your branch to a commit that you specify (with the optional side effect of updating your index and working tree to that commit as well).

`git reset` needs to know two things:
1. The "hardness"--that is, how many trees are to be reset, and
2. Which commit SHA to (re)set to.

NOTE: If you just type "git reset", the default hardness is "\--mixed", and the default commit SHA is HEAD.

#### Effects of `git reset`'s \--soft, \--mixed, and \--hard options
| Tree | Role | `git reset` "hardness"<br>needed to move the tree |
| ---- | ---- | ---- |
| HEAD | The latest commit | \--soft |
| Index | The commit-in-progress | \--mixed (also moves HEAD). The default.
| Working Tree | Your local filesystem | \--hard (also moves HEAD and Index.)

#### Another view of the effects of `git reset --soft/mixed/hard <ThisCommit>`

<style>
  /* For the git-versus-github table */
  td { text-align: center; }
  tr.bb { border-bottom: 2px solid black !important; }
  .bb table { border-collapse:collapse; }
  th {
    background-color: #b3a497;
    padding: 0 10px 0 10px;
  }
  th.thcolspan { background-color: #d3c4b7; }
</style>

<!-- Github Markdown doesn't do colspan -->
<table class="bb">
<tr><th>"hardness"</th><th class="thcolspan" colspan="3">Trees that are reset to &lt;ThisCommit&gt;</th></tr>
<tr class="bb"><th></th><th>Working Tree</th><th>Index</th><th>HEAD</th></tr>
<tr><td>--soft</td><td>-</td><td>-</td><td>YES</td></tr>
<tr><td>--mixed</td><td>-</td><td>YES</td><td>YES</td></tr>
<tr><td>--hard</td><td>YES</td><td>YES</td><td>YES</td></tr>
</table>

## Moving Objects Among Trees

Let's move a single file through this workflow, starting with working-tree changes, which will move into the index, and then into a commit.  Then, we'll revert it, tree by tree, all the way back using `git reset`.

### 1. Move a change forward through the trees

Make a change (which tree are you working in now, as you run the following commands?) such as adding a menu item link...
```
code index.html   #  (or whatever file you may have in your working tree)
# Make a minor change to index.html in your editor, and save it. Then...
git status  # or use the 'gs' alias
git diff    # or use the 'gd' alias
```

Add to the index.
```
git add index.html    # or 'ga' aFile.txt
git status
git diff
git diff --staged   # or use the 'gds' alias
```

Which tree (or trees) have the change now?

Commit it...
```
git rev-parse HEAD
git commit -m "Added item to menu in index.html"  # or use the 'gc' alias: gc -m "Added..."
git status
```

Now which tree (or trees) have the change?

### 2. Move the same change backward through the trees

Recall that besides specifying "hardness", we need to tell `git reset` which SHA to reset to.

(What is the previous value of HEAD?)
```
git rev-parse HEAD   # See what commit sha HEAD resolves to
git reset
git rev-parse HEAD   # Did HEAD change?  Why or why not?
git rev-parse HEAD^  # Check the value of HEAD's parent commit sha
git status
git reset --soft HEAD^  # Recall which trees are changed by --soft
git rev-parse HEAD   # What is HEAD pointing to now?
git status
git diff             # Diff between working tree and index
git diff --staged    # Diff between index and HEAD
```
NOTE: The caret (^) in `HEAD^` above means "first parent".[^git-revisions]

What happened?  What is `git status` telling you, and why?

What happened to the commit that we were on before doing a `git reset```?  How might we get back to it?

Now the branch that HEAD points to has been "reset", back to where it was before we committed.

_Which tree(s) changed?_ [hover](./doesnotexist.jpg, "Because we used --soft, only the HEAD tree moved. Working tree and index are untouched.")

Let's change the next tree...
```
git reset   # Same command, but now something  happened.  Why?
git status
git diff
git diff --staged
```

_Which tree(s) changed this time?_ [hover](./doesnotexist.jpg, "We ran 'git reset' with no arguments, which means the default sha is HEAD; so the HEAD tree stayed the same (did not move).
We also ran 'git reset' with no options, which means the default is --mixed.  Therefore, the index has been updated to match HEAD.
The working tree is still untouched.")

Let's change the third tree...
```
git reset --hard
git status
git diff
git diff --staged
```

#### Questions for thought:

What happened to each tree at each step?

How is `git reset <paths>` the opposite of `git add <paths>`?

When would each variation of `git reset` come in handy?  For instance, how would you employ `git reset --mixed` to add more files to an existing commit?  Or to amend a commit by adding more changes to the same file?

---
[^git-revisions] for more on `^`, `~`, `@{push}`, and other revision notation, see [Git Revisions](https://git-scm.com/docs/revisions).

