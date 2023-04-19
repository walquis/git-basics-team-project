# Merging - with conflict

Let's practice another merge, but now with a change that conflicts.

But first, read up a little on [what causes merge conflicts](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/addressing-merge-conflicts/about-merge-conflicts).

Create and checkout a new `alsoMyBranch`--but start it where `main` started.  You can use several methods to refer to that pont.  The following notations all resolve to the same commit:
- `main^^` - two commits before main
- `HEAD^^` - two commits before HEAD
- `origin/main` - the commit on which the `origin/main` tracking branch sits
- `2dd739a` - the shortname of the commit
- `2dd7` - an even shorter name--works as long as it's unique
- `2dd739a539c6cc30e9b3cdfa952439ba93c0c392` - the full SHA

```
git checkout -b alsoMyBranch main^^  # Each caret (^) goes back one commit
```
Now `alsoMyBranch` exists and sits on `2dd739a`, and `HEAD` is pointing to it; that is, it's your current branch.

Change the menu item source code in `index.html` like you did on `mybranch`--but not _exactly_ like you did; let's add another menu item to `index.html`.

From this...
```
    <a href="./index.html">Home</a> <a href="./help.html">Help</a>
```
... to this:
```
    <a href="./index.html">Home</a>
    <a href="./map.html">Map</a>
    <a href="./help.html">Help</a>
```
Save the file.  Now `git add` and `git commit`...
```
adog  # Check how the graph looks.
git diff           # What am I about to add to the index?
git add index.html
adog  # Check how the graph looks.  Has it changed?
git diff --staged  # What am I about to commit to git?
git diff           # Why does this show no differences?
git commit -m "add 'Map' to the menu"
adog  # Check how the graph looks.  How about now?
```
The git graph should now look something like this:
```
adog
* daf0eb2 (HEAD -> alsoMyBranch) add 'Map' to the menu
| *   686e8db (main) merge HTML source menu updates in index.html and help.html
| |\  
| | * ccaf82c (mybranch) each menu item on a separate line in the code
| |/  
|/|   
| * f7295ef each menu item on a separate line in the code (for help.html)
|/  
* 2dd739a (origin/main) Some handy git aliases, and an initial .gitignore
* 4ca41a7 Initial commit
```

Let's merge!

```
git merge mybranch   # Merge mybranch into current branch
Auto-merging index.html
CONFLICT (content): Merge conflict in index.html
Automatic merge failed; fix conflicts and then commit the result.
```

There it is--the **merge conflict**.  Git doesn't have enough info to know what you want to happen.

At this point, git has placed info about the conflict into index.html, and left it up to you to figure it out.  You can view the contents of the file directly, like this:
```
cat index.html 
<html>
  <head>
    <title>Solar System</title>
  </head>
  <body>
    <h1>The Solar System</h1>
    <a href="./index.html">Home</a>
<<<<<<< HEAD
    <a href="./map.html">Map</a>
=======
>>>>>>> mybranch
    <a href="./help.html">Help</a>
    <h1>Hello World!</h1>
  </body>
</html>
```
The changes from your current branch show up between `<<<<<<< HEAD` and `=======`.

The changes from the merged-in `mybranch` show up between `=======` and `>>>>>>> mybranch`.

You can use VSCode to view `index.html`; VSCode understands the merge-conflict format and decorates your view with buttons to help out.

In this case, you would want both changes: the new 'map.html' link, and the 'help.html' link on a line by itself (which in this case, somewhat non-intuitively, shows up as an empty diff for the merged-in branch).

Click `Accept Both Changes` in VSCode, or manually delete the delimiters that git added, so that the code looks like this:
```
<html>
  <head>
    <title>Solar System</title>
  </head>
  <body>
    <h1>The Solar System</h1>
    <a href="./index.html">Home</a>
    <a href="./map.html">Map</a>
    <a href="./help.html">Help</a>
    <h1>Hello World!</h1>
  </body>
</html>
```
Now, tell git about the resolution by doing `git add` for the file that had the conflict:
```
git add index.html
```
And finally, commit it.  Git keeps track that you're still merging, so it will make this commit a **merge commit**--that is, a commit with two parents.
```
git commit -m "merge 'Map' entry with mybranch"
```

**Key Takeaways:**
- You can start a branch from any commit--not necessarily the one you happen to be on.
- You can reference a commit in lots of different ways.
- By definition, merge commits have two or more parents.
- The changes for the branch you're on will show up _first_ in a merge conflict's diff report.
- The changes for the branch being merged into your current branch will show up _last_ in a merge conflict's diff report.
- NOTE: A given merge may have more than one set of conflicts to resolve, even within the same file.  _Don't assume the first conflict is the only one!_
