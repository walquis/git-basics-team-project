# Merging - without a merge conflict

You've just made a `mybranch` branch, made it your current branch with `git checkout`, so that HEAD points to it, and committed a change to it.

Now you'll go back to the `main` branch and make a (non-conflicting) change, so that `main`'s history diverges from `mybranch`'s.  Finally, you will merge the changes back into `main`.

Change `help.html`.  You can change anything in help.html that you want (for example, you can change the menu in the same way you did with `index.html`).  Since you're not changing the same file that you changed in `mybranch`, the change won't result in a merge conflict.
```
git branch  # Which branch am I on?  My current branch will have a star (*) next to it.
git checkout main
code help.html   # A different file than `mybranch`, for a non-conflicting change.
```

Save `help.html`.  Now `git add` and `git commit`...
```
adog  # Check how the graph looks.
git diff           # What am I about to add to the index?
git add help.html
adog  # Check how the graph looks.  Has it changed?
git diff --staged  # What am I about to commit to git?
git diff           # Why does this show no differences?
git commit -m "each menu item on a separate line in the code (for help.html)"
adog  # Check how the graph looks.  How about now?
```
The git graph should now look something like this.  Notice `mybranch`'s history diverges from `main`'s:
```
adog
* f7295ef (HEAD -> main) each menu item on a separate line in the code (for help.html)
| * ccaf82c (mybranch) each menu item on a separate line in the code
|/  
* 2dd739a (origin/main) Some handy git aliases, and an initial .gitignore
* 4ca41a7 Initial commit
```
**Let's merge!**
```
git branch   # Check that we're on the branch we're merging TO
git merge mybranch -m "merge HTML source menu updates in index.html and help.html"
```
The git graph shows the merge.
```
adog
*   686e8db (HEAD -> main) merge HTML source menu updates in index.html and help.html
|\  
| * ccaf82c (mybranch) each menu item on a separate line in the code
* | f7295ef each menu item on a separate line in the code (for help.html)
|/  
* 2dd739a (origin/main) Some handy git aliases, and an initial .gitignore
* 4ca41a7 Initial commit
```
Because there were no conflicts, the merge completed without prompting.

**Key Takeaways:**
- Not all merges result in conflicts.
- The branch you're on is the branch that will be moved to the merge commit. (The other branch stays where it is).
