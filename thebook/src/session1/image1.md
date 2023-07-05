![](image1.png)

To kick off collaboration, my teammate does some local work worthy of sharing--the commit represented by the pink circle.

### Key Learning Points:
✅ **`git commit` is a local-only operation.**  No communication happens to or from any remote repo.

✅ Because `git commit` is local-only, **my teammate's `main` moves, but not `origin/main`.**

✅ Because `git commit` is local-only, **`main` on the remote called "origin" does not move either** (at least, not as a result of this teammate's commit.  Somebody else could have `git push`'d and hence moved `main` on the remote, but the teammate won't know about it yet).

