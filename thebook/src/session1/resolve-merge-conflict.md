### Create And Resolve Merge Conflicts - With Basic Workflow

#### LAB - merge conflicts
> 1. Each teammate: Change the same line in same file (e.g. Change "The Solar System" in `index.html` to some other text).
> 1. Commit.
> 1. One teammate do a `git push`; the others `git pull`.
> 1. Among your team, resolve merge conflicts and `git push` until you all have the same commit sha for HEAD.

### Create And Resolve Merge Conflicts - Using Branches and PR's
Github supports [two collaborative development models](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/getting-started/about-collaborative-development-models):
- fork and pull
- shared repository <--- This is us

>>"In the shared repository model, collaborators are granted push access to a single shared repository and topic branches are created when changes need to be made. Pull requests (PR's) are useful in this model as they initiate code review and general discussion about a set of changes before the changes are merged into the main development branch. This model is more prevalent with small teams and organizations collaborating on private projects."

We'll be working with the shared repository model.

🤔 Why is it called a "**Pull** Request", if you're **pushing** changes?

#### LAB - Create/Handle merge conflicts again - but now using Pull Requests in your workflow
> 1. Each teammate: `git checkout -b` _yourOwnBranchName_
> 1. Each teammate: Change the same line in same file, like before.
> 1. Commit.
> 1. `git push` _yourOwnBranchName_
> 1. Go to Github and make a PR for your branch; choose one or more reviewers.
> 1. Reviewers: review/approve the PRs and merge.
> 1. Review and merge, `git pull`, etc. until you all have the same commit sha for HEAD.
