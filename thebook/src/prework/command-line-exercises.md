# Git From the Command Line
You may be wondering at this point, Why not learn Git from the point of view of _\<insert-your-favorite-IDE-here>_?  The git plugins in those IDE's generally function as wrappers around the git command-line client, and sometimes hide what's actually going on, as well as hiding capabilities available in the git client.  Additionally, IDE's differ in how they present git functionality.

The most direct and cross-compatible way to learn git is to interact with it at the command line level.

You'll briefly cover these topics:
- `git reset`
- Branching
- Merging (with no conflicts)
- Merging (with handling a merge conflict)

🤔 What is the difference between a merge commit, versus a merge commit that has a merge conflict?

## Preflight Check:
Make sure `adog` works on your \*nix command line (`adog` is the alias you established during "Set Up Git Environment").  cd into your git-basics-starter-repo and run `adog`.  You should see something like this:
```
cd git-basics-starter-repo
adog
* 2dd739a (HEAD -> main, origin/main) Some handy git aliases, and an initial .gitignore
* 4ca41a7 Initial commit

```

If not, set the alias with this command and try `adog` again:
```
alias adog='git log --all --decorate --oneline --graph'
adog
```

## [Get Started!](./command-line-exercises/three-trees-git-reset.md)

## What's Next?

Once you've worked through these exercises, you should be ready for the class!

Feel free to take a look at the [syllabus](../syllabus.md).

If you want to do more before class starts, [Reset Demystified](https://git-scm.com/book/en/v2/Git-Tools-Reset-Demystified) is a useful deep dive.

