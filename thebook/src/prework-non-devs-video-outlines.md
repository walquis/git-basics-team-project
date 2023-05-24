# Outline of Prework-for-non-devs Videos

## [Hallden. "Linux Commands You Need to Know"](https://www.youtube.com/watch?v=J2zquYPJbWY)

Eight basic commands
```
ls
[autocomplete with tab]
ls *.txt
ls -al

cd  Desktop
cd 
cd ..

mkdir Desktop/folder

pwd

touch Desktop/hello.txt

rm (and rmdir)

mv myfile Documents/

cp Documents/myfile.txt Downloads
```

## [Colt Steele. "Learn Git in 15 minutes"](https://www.youtube.com/watch?v=USjZcfj8yxE)

- repos - local, remote

```
git init
ls -a
git status
touch index.html
# Getting changes into git is 2-stage:
git add index.html
git commit -m "commit message"

git log
touch app.js
touch styles.css

# Edit index.html, app.js and styles.css

git add index.html
git commit -m "add app logic"

git add .

git commit -m "add basics styles"

# Edit styles.css
git add styles.css
git commit -m "change bg color on body"

git checkout [hash]

branch - timeline of commits

(* says HEAD detached)

git checkout master

git branch crazycolors
git checkout crazycolors

[edit files]
git add .
git commit -m "add animated bg"

git checkout master

git merge crazycolors
```

## [Fireship Learning. "Git it? How to use Git and Github"](https://www.youtube.com/watch?v=HkdAHXoRtos)

A series of small milestones
- create multiple branches

- The GitLens plugin for vscode

```
git init
touch .gitignore - or use VSCode plugin to generate one

git add .

git reset --hard

# Make many small commits

git add .
git commit -m " ... "

git branch

git checkout -b feature

# "back to original state on the master" ???

git stash

git stash pop OR git stash apply

git checkout master
git merge feature

git merge feature --squash
# "It won't actually change the head commit on the master branch,
# so you'll need to add an additional commit on your own that says
# something like 'merged in feature branch' "
# (Huh?? He should probly use 'git rebase -i' instead)

git remote add origin 
git push origin master

```
