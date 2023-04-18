# Hints For Viewing Repo Changes

## Git Diff - the command line
Note that the diff'ing methods below only compare commits, that is, changes *already committed to the repo*.  They don't address contents of your working directory or index.  For that, use "git diff" (which shows your index vs. working tree), or "git diff --staged" (HEAD vs. index).
1. See a given commit's diffs relative to its parent commit...

In this form of `git show`, you see ONLY a single commit's diffs, even if you provide a branch name instead of a sha.  Just saying `git show` displays your most recent commit's changes.
```
$ git show 3f29a16  # (Substitute your own commit sha)
```
`git show` can be handy whenever you just want to see a single commit's worth of diffs.  You can do this from anywhere--there is no need, for instance, to get your working tree into a clean state, checkout a particular branch, and "git diff".

2. View diffs on an entire branch, relative to another branch...
```
$ git diff main..otherbranch  # In the diff output, main is on the left, otherbranch on the right.
```
3. Exclude files from diff... For some branch comparisons, you may want to exclude one or more files from the `git diff` output. For instance, no need to see an entire jquery file when it's added to the code base. And, you may not want to view diffs in a "docs" directory ...
```
$ git diff main..sample-solution ':(exclude)*jquery*.js' ':(exclude)docs/'
```

## View your changes on github.com
Navigate to your repo on https://github.com.  Then click "Contribute", directly under the green "Code" button, then "Compare".  This will show diffs with respect to `main`.

## Download [SourceTree](https://www.sourcetreeapp.com) and point it at your local repo
Or download another git GUI, such as Github Desktop--but SourceTree is quite good.

Browse the changes, and explore the options for viewing changes--for instance, highlighting multiple commits with shift-click will show diffs across those commits; also, the file viewer can switch from flat list to tree view; etc.

