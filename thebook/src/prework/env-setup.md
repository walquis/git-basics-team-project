## Git Environment Setup
We'll examine two repos:
1. A sample of the "Solar System" website.
1. A "starter" repo for that website.  (You'll delete it after this prework, and then re-clone a copy from your team lead's fork when class starts).

Run these commands in your Terminal.app or Git bash:
```bash
git config --global pull.rebase false  # Tell git what to do when pulling
git config --global core.editor "code --wait"  # Set your git editor to vscode

cd                          # Start from your home directory
mkdir src
cd src                      # Or, cd to wherever you keep code projects

# Although you won't be committing anything to it, 
# you'll use this sample repo as a reference...
#
git clone https://github.com/walquis/git-basics-sample-project-repo

# A "starter" repo of the website.  You'll delete it after this prework,
# and then re-clone from your team lead's fork when class starts).
#
git clone https://github.com/walquis/git-basics-starter-repo

# Add some handy aliases to your current shell.
#
cd git-basics-starter-repo

source bin/git-aliases.sh

# Test that the 'adog' alias works...
#
adog
* 2dd739a (HEAD -> main, origin/main, origin/HEAD) Some handy git aliases, and an initial .gitignore
* 4ca41a7 Initial commit
```
