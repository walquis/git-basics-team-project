
# Hints For Viewing Repo Changes

## Git Diff - the command line
Note that the diff'ing methods below only compare commits, that is, changes *already committed to the repo*.  They don't address contents of your working directory or index.  For that use "git diff" (index vs. workspace), or "git diff --staged" (HEAD vs. index).
1. See a given commit's diffs relative to its parent commit...

In this form of `git show`, you see ONLY a single commit's diffs, even if you provide a branch name instead of a sha.
```
$ git show 3f29a16  # (Not a real commit sha)
```
`git show` can be handy whenever you just want to see a single commit's worth of diffs.  You can do this from anywhere--there is no need, for instance, to get your workspace into a clean state, checkout a particular branch, and "git diff".

2. To view diffs on an entire branch, relative to another branch...
```
$ git diff main..someotherbranch  # In diff output, main is on the left, someotherbranch on the right.
```
3. For some branch comparisons, you may want to exclude one or more files from the `git diff` output. For instance, no need to see an entire jquery file when it's added to the code base. Also, no need to view diffs in a "docs" directory ...
```
$ git diff main..sample-solution ':(exclude)*jquery*.js' ':(exclude)docs/'
```

## More ways to view changes
**Look at them on github.com.** Navigate to https://github.com/walquis/tags/tree/sample-solution (or visit https://github.com/walquis/tags and choose `sample-solution` from the branch dropdown).  Then click "Contribute", directly under the green "Code" button, then "Compare".  This will show diffs with respect to `main`.

**Download [SourceTree](https://www.sourcetreeapp.com)** (or another git GUI, such as Github Desktop--but SourceTree is quite good), and point it at your local repo.

Browse the changes, and explore the options for viewing changes--for instance, highlighting multiple commits with shift-click will show diffs across those commits; also, the file viewer can switch from flat list to tree view; etc.

