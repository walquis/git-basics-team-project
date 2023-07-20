![](image0.png)

When I and my teammates set up to collaborate, we all `git clone` a shared repo--something like this...
```
$ git clone https://github.com/org-or-user/the-team-repo   # Make local copy of repo
$ git checkout main   # Point HEAD at "main", i.e., make "main" my current branch
```

In this way, we all start with the same understanding of where branch `main` is--the commit represented by the green circle.

### Key Learning Points:
✅ **The <span class="hljs" style="color:red">origin/main</span>
branch, seen in both local repos, is a "tracking branch".** git uses it to keep track of where the <span class="hljs" style="color:red">main</span> branch on the remote called "origin" is pointing.

✅ **As you will see, this tracking is not "live"**; no automatic cross-repo notification is happening.

✅ **I normally have no reason to `git checkout` a tracking branch** like <span class="hljs" style="color:red">origin/main</span>.  Its value in my repo is updated when I `git push` and `git pull`.
