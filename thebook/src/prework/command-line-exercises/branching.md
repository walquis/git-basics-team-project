# Branching

Checkout a new branch, `mybranch`.  Make change to index.html.
```
cd git-basics-starter-repo
adog
git branch   # See which branch i'm on (how could I tell from adog output?)
git checkout -b mybranch  # Make a new branch (-b) and checkout to it.
adog   # Note mybranch in the graph.  How do I know it's my current branch?
code index.html   # Open index.html in VSCode
```
Let's reformat the HTML source code for the menu to be more readable. Change it from this:
```
    <a href="./index.html">Home</a> <a href="./help.html">Help</a>
```
... to this:
```
    <a href="./index.html">Home</a>
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
git commit -m "each menu item on a separate line in the code"
adog  # Check how the graph looks.  How about now?
```
The git graph should now look something like this:
```
adog
* ccaf82c (HEAD -> mybranch) each menu item on a separate line in the code
* 2dd739a (origin/main, main) Some handy git aliases, and an initial .gitignore
* 4ca41a7 Initial commit
```
🤔 Your commit will have a different hash code, or SHA, than `ccaf82c`.  Why might that be?  (["The Three Objects"](/objects-and-trees-exercise.html) explains).

**Key Takeaways:**
- Use `adog`, `git status`, `git diff`, and `git diff --staged` constantly.
- `git diff` shows differences between working tree and index.
- `git diff --staged` shows differences between index and HEAD.
- Although `git branch mybranch` creates `mybranch`, it doesn't checkout to it (that is, `HEAD` is not pointed at `mybranch`).
