![](image2.png)

Now my teammate shares the work they've committed to `main`, by pushing to the remote named "origin", with something like this:
```
$ git push origin main
```

### Key Learning Points:
✅ **The pink commit has been copied to the remote named "origin".** In general, any commits reachable from `main` are copied over if not already there.

✅ **The remote's `main` branch has been updated to reflect the new work**--and correspondingly, my teammate's local <span class="hljs" style="color:red">origin/main</span> tracking branch is updated as well.[^ffwdmerge]

✅ **Nothing happens in my local repo** as a result of my teammate's push.

---
[^ffwdmerge]: As we'll see soon, a `git pull` is a 2-part operation: "fetch" and "merge".  A `git push` is the same 2-part operation, but in the other direction.  Moving the `main` pointer forward on the remote, as is done here,
is an example of that second "merge" part.  Because no changes have reached the remote since our teammate last pulled, the `main` pointer can simply be moved forward; hence, this is called a "fast-forward merge".
This is the only kind of merge possible with a `git push`.
If there turn out to be changes remotely that we didn't know about, a merge commit (that is, a commit with multiple parents) would be needed.  `git push` doesn't do those, so the `git push` is rejected and no branches are updated (unless you use `--force`; but don't do that unless you know exactly what will happen!)
