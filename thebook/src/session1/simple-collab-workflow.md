# Simple Collaborative Git Workflow
"Simple" is everybody working on the `main` branch...pretty simple, but not the best!

**Vocabulary**: remote, merge commit, "fast-forward merge"

**Commands**: `git checkout`, `git checkout -b`, `git pull`, `git add`, `git commit -m`, `git branch`, `git push`, `git fetch`, `git merge`

A basic workflow in the ["shared-repository model"](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/getting-started/about-collaborative-development-models) of development:

![](images/push-pull-push-diagram.jpg)
Click [here](./walkthrough-of-simple-workflow.md) for a walk-through of this workflow.

🤔 What is the difference between a merge commit, and a commit that has a merge conflict?

#### LAB - Simplest Possible Collaborative Git Workflow
> 1. **Each teammate**: Commit and push at least one _non-conflicting_ change.  For instance, each teammate
> can modify one of these files: `index.html`, `help.html`, `about.html`, `faq.html`, `map.html`.
> 1. `git push` and `git pull` until all of you have each other's changes and are on the same commit locally.

✅ **Checkpoint: Your team is all on the same commit. (Check by running `adog` and observing which commit HEAD is on).**

🤔 Will a given commit always have the same SHA after it has been `git push`'d or `git pull`'d?  Why or why not?

