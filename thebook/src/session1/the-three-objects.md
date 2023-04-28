### Anatomy of a Git Commit, or, "The Three Objects"

**Vocabulary**: sha, content-addressable, blob, tree, commit

**Commands**:
- `git show` - What's in the latest commit.  See [Viewing Repo Changes](./viewing-changes.md) for more.
- `git reflog` - local history of where HEAD has been.
- `git cat-file -p` - just for teaching purposes; not part of a normal git workflow

Now that we have some commits, let's take a closer look...

![](../images/commit-diagram.png)

🤔 Is it possible for a commit to have the same SHA as its parent?

#### LAB - Anatomy of a Git Commit, or, The Three Objects
> Use `git cat-file -p` to answer these questions:
> 1. What fields does HEAD have?
> 1. What kind of SHA is HEAD's "parent" field? (Use `-t` instead of `-p`)
> 1. What fields does HEAD's tree have?
> 1. What are the contents of HEAD's tree's first blob?

