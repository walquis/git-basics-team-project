# Prework for Collaboration-With-Git Exercise

This exercise assumes you have ...
1. A [GitHub](https://github.com){:target="_blank"} account.
1. Visual Studio Code installed.

This prework should only take a few minutes. You'll do  a little git environment setup, install the Git Graph plugin, and familiarize yourself with Git Graph by examining a sample repo for a hypothetical project team.

(If you really want to go deep with prework, this page will give you a head-start on the core class material: [Reset Demystified](https://git-scm.com/book/en/v2/Git-Tools-Reset-Demystified){:target="_blank"}.)

## Run these commands in your Terminal.app
```bash
git config --global pull.rebase false  # Tell git what to do when pulling
git config --global core.editor "code --wait"  # Set git editor to vscode
cd                          # Start from your home directory
mkdir -p src
cd src                      # Or cd to wherever you keep code projects
git clone https://github.com/walquis/git-basics-sample-project-repo
cd git-basics-sample-project-repo
```

## Install the GitGraph plugin in your VSCode

Visit the [GitGraph Plugin Install](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph){:target="_blank"} page and follow the install instructions.

## Browse history in a sample repo
This repo records the project history of a five-member team: Ned, Nykhia, Dex, Deja, and Xavier.

Although you won't be committing anything to it, feel free to git clone [https://github.com/walquis/git-basics-sample-project-repo](https://github.com/walquis/git-basics-sample-project-repo){:target="_blank"}.

Open `git-basics-sample-project-repo/index.html` in your browser to view the website.

Point VSCode at the `git-basics-sample-project-repo` and use GitGraph to take a look:


![GitGraph of sample repo history](images/git-graph-of-sample-repo.png)

## Some Suggestions for Exploration

### Questions to answer using the commit graph

1. What is the name of the branch to which changes have been delivered?
1. Who added the planet images?
1. Are there any changes in the repo which have not yet been delivered?
1. **Challenge Question** - Why was Ned grumpy in his comment on 4 Feb 2022 12:06, commit 4b50701d? What did his teammates miss when they merged?

### Explore the code at a specific commit
**Hint**: You can do a 'detached head' checkout, that is, where HEAD points to a commit rather than a branch name.  It's handy for viewing the repo at chosen points in history.  For instance, you can open the website in its state as-of a specific commit.  Or run the repo's tests (if the repo had tests defined).

What should Xavier have done during his merge to make Ned happy?  Who else should have done the same?

```
$ git checkout 393cd9f4   # Xavier's merge, before Ned fixed things up.
$ open index.html         # Explore the website at this point in history.
$ git checkout 4b50701d   # Ned's fixes
$ git checkout main       # Set HEAD back to a branch reference (`main` in this case).
```

## What's Next?

Take a look at the [syllabus](syllabus){:target="_blank"}.

In class, you and your team will be making changes in parallel that may resemble this sample history, as you experience what collaboration looks like with git.

## Bonus prework - explore some [Unix/Shell Concepts](unix-shell-concepts){:target="_blank"}
I *may* touch on these briefly in class. Feel free to google around on your own; focus on bash shell concepts, especially I/O redirection, process hierarchy and management, and environment variables.

