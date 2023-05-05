# Viewing Changes

## Git Diff - the command line

### See a given commit's diffs relative to its parent commit...

In this form of `git show`, you see ONLY a single commit's diffs, even if you provide a branch name instead of a sha.  `git show` with no arguments displays your most recent commit's changes, relative to its parent.

`git show someSha` - shows `someSha`'s diffs.  You can do this from anywhere--there is no need, for instance, to get your working tree into a clean state, checkout a particular branch, and "git diff".
```
$ git show 3f29a16  # (Substitute your own commit sha)
```

### View diffs on an entire branch, relative to another branch...
```
$ git diff main..otherbranch 
```
In the diff output, `main` is on the left, `otherbranch` on the right.

### Exclude files from diff...
For some branch comparisons, you may want to exclude one or more files from the `git diff` output (For instance, no need to see entire contents of a jquery file when it's committed). And, you may not want to view diffs in a "docs" directory.  The "exclude" syntax looks like this:
```
$ git diff main..sample-solution ':(exclude)*jquery*.js' ':(exclude)docs/'
```

### View your changes on github.com
Navigate to your repo on https://github.com.  Then append "/compare" to your URL.  As the UI says, from here you can "Compare and review just about anything".  I find it a bit strange that there's no button for getting to this page ... 🤷

> Note that the above diff'ing methods apply to commits, that is, changes *already committed to the repo*.  They don't deal with changes in your working tree or index.  For that, use "git diff" (which shows working tree vs. index), or "git diff --staged" (index vs. HEAD).

## Download [SourceTree](https://www.sourcetreeapp.com) and point it at your local repo
Or download another git GUI, such as Github Desktop--but SourceTree is quite good.

Browse the changes, and explore the options for viewing changes--for instance, highlighting multiple commits with shift-click will show diffs across those commits; also, the file viewer can switch from flat list to tree view; etc.

