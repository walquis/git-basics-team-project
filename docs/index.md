# Collaborating with git

[ ![](https://imgs.xkcd.com/comics/git.png) ](https://xkcd.com/1597/){:target="_blank"}

## Introduction

In this two-session hands-on course, you will experience the essence of git by working in teams to improve a simple website, laying a foundation for collaborating in a professional environment.

I've presented some variation of this material to every CodePlatoon cohort since Bravo. Several graduates report that, equipped with a firm grasp of these git basics, they have become go-to git resources in their software teams.

- The Course In a Nutshell - Three Objects, Three Trees
- Course Layout - Prework, Session One, Session Two
- Homework - Objects and Trees - Between Sessions
- Roles in The Project Collaboration Exercise
- References - Mostly links to [git-scm.com](https://git-scm.com)

## About the instructor
As a devops professional with three-ish decades of experience in version control, I first experienced git in 2009 when developers, those crazy people, insisted on bringing it into my company.  I learned a few basic survival commands, but it wasn't really clicking for me. Depressingly often for a version control "expert", I got out of my depth and had to be rescued.

Eventually I tired of memorizing magic spells and decided to buckle down and learn the basics of git once-and-for-all.  Suddenly, git started making sense!  That feeling of enlightenment (and also the huge jump in my ability to manage code changes) eventually inspired this course.

## The Course In a Nutshell - Three Objects, Three Trees
You will get lots of practice expressing your changes in terms of git's data model - **three objects** - and moving them around in git's state model - **three trees**.
- The **three objects** - blob, tree, commit
- The **three trees** - HEAD, index, workspace

Along the way, we will learn and practice some [Common Git Workflows](common-git-workflows){:target="_blank"}.

By the end of our time, we'll have covered the topics in the [Course Syllabus](syllabus){:target="_blank"}.

## Course Layout
- **[Prework](prework){:target="_blank"}** - Explore the [Tags app](https://github.com/walquis/tags){:target="_blankk"}'s sample solution.  Your team will start from the `master` branch, and make changes to the app until it looks more or less like the app on the `sample-solution` branch.  As prework, you will examine and run each of the commits from `master` (for each commit, the app is in a runnable although incomplete state), all the way to the tip of `sample-solution`.  Your team will collaborate on these changes, divvying them up and delivering them to `master`.
- **Session One** - Set up your team and environment.  Some basic Git, and some Linux/Bash.
- Homework - [Objects and Trees Handout](objects-and-trees-handout){:target="_blank"}.
- **Session Two** - Collaborate with your team to run the project.  Handle merge conflicts.

## Homework - Objects and Trees - Between Session One and Session Two
In the Prework and Session One, you assembled your project team, set up your development environment and went over the code.  During Session One, you got an intro to The Three Objects, and The Three Trees.

Now you're starting to think about how to collaborate on the changes to be made.

The objective of this homework is to familiarize with the two major concepts we touched upon in Session One:
- The Three Objects - the git data model
- The Three Trees - managing local changes

This should help you hit the ground running in Session Two.

Work through the entire [Objects and Trees Handout](objects-and-trees-handout){:target="_blank"}.  We'll have already touched on parts of it in Session One, but it's worth going all the way through.

Also, if for any reason you were not able to get your app up and running, *do the prework from the beginning.*  This includes deleting your fork on github.com, deleting or moving your local repo, and forking and cloning a fresh repo.  And please do let me know via Slack if anything is not working for you.

## Roles in The Project Collaboration Exercise
To keep focused on git (as opposed to Github), we will not be using any Github workflow operations apart from the fork operation.
1. *Team Lead* - Fork this repo and invite the rest of the team as collaborators to your fork.
1. *Each Member* - `git clone` your team lead's fork (NOT walquis/tags!) to your local machine.
1. *Whole Team* - Take a look at the commits along your chosen MILD or SPICY path and agree as a team how you'll divide each task.  Feel free to invent your own tasks!  See [Common Git Workflows](common-git-workflows){:target="_blank"} for guidance.

## References
Most of these are from <a href="https://git-scm.com" target="_blank">Git-Scm</a>

- 1.1 - Nice-to-Know - Skim - 3 min - [About Version Control](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control){:target="_blank"}
- 1.3 - Fundamental - Read Carefully - 10 min - [Git Basics](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics)
- 2.2 - Fundamental - Skim - 5 min - [Recording Changes to the Repo](https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository){:target="_blank"}
- 2.5 - Fundamental - Skim - 5 min - [Working With Remotes](https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes){:target="_blank"}
- 5.2 - Nice-to-Know - Skim - 10 min - [Contributing to a Project](https://git-scm.com/book/en/v2/Distributed-Git-Contributing-to-a-Project){:target="_blank"}
- __Essential__ - [Git Objects](https://git-scm.com/book/en/v2/Git-Internals-Git-Objects){:target="_blank"} - The Three Objects: Commit, Tree, Blog
- __Essential__ - [Reset Demystified](https://git-scm.com/book/en/v2/Git-Tools-Reset-Demystified){:target="_blank"} - The Three Trees: HEAD, Index, Workspace
- [Branches In a Nutshell](https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell){:target="_blank"}
- [Resolve Merge Conflicts](https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging#_basic_merge_conflicts){:target="_blank"}
- [Rebase](https://git-scm.com/book/en/v2/Git-Branching-Rebasing){:target="_blank"}
- [Cherry-pick](https://git-scm.com/book/en/v2/Appendix-C:-Git-Commands-Patching){:target="_blank"}
- [Bisect](https://git-scm.com/book/en/v2/Git-Tools-Debugging-with-Git){:target="_blank"}
- __Highly Recommended__ - A bash tutorial, such as [Bash Scripting For Beginners](https://linuxconfig.org/bash-scripting-tutorial-for-beginners){:target="_blank"}.  At a minimum, know these [basic Linux commands](unix-shell-concepts).
- __Be Your Own Best Friend__ - Learn Vim.  Just learn it.  [Here](https://www.openvim.com/){:target="_blank"}, [here](https://linuxconfig.org/vim-tutorial){:target="_blank"}, [here](https://www.tutorialspoint.com/vim/index.htm){:target="_blank"}, and/or [here](https://vim-adventures.com/){:target="_blank"}.


