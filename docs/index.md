# Collaborating with git

[ ![](https://imgs.xkcd.com/comics/git.png) ](https://xkcd.com/1597/){:target="_blank"}

## Contents
- [Course Schedule](#course-schedule) - Prework, Session One, Homework, Session Two
- [Homework](#homework) - Between Sessions 1 and 2 - 3 objects, 3 trees
- [References](#references) - Mostly links to [git-scm.com](https://git-scm.com)

## Overview

In this two-session hands-on course, you will experience the essence of git by working in teams to build a simple static website, laying a foundation for collaborating in a professional environment.

I've presented some variation of this material to every CodePlatoon cohort since Bravo. Several graduates report that, equipped with a firm grasp of these git basics, they have become go-to resources for git in their software teams.

Your team will collaborate on changes, working in parallel and delivering to `main` until your site (which you can view locally by opening index.html) looks more or less like the site in this repo's `sample-solution-static-page` directory.

As you proceed, you will get lots of practice expressing your changes in terms of git's data model - **The Three Objects** - and moving them around in git's state model - **The Three Trees**.
- The **three objects** - blob, tree, commit
- The **three trees** - HEAD, index, workspace

Along the way, we will practice some [Common Git Workflows](common-git-workflows){:target="_blank"}.

By the end of our time, we'll have substantially covered the topics in the [Course Syllabus](syllabus){:target="_blank"}.

### About the instructor
As a devops professional with three-ish decades of experience in version control, I first experienced git in 2009 when developers insisted on bringing it into the company.  I learned a few basic survival commands, but it wasn't really clicking for me. Depressingly often for a version control "expert", I got out of my depth and had to be rescued.

Eventually I tired of memorizing magic spells and decided to buckle down and learn the basics of git once-and-for-all.  Suddenly, git started making sense!  That sense of enlightenment (along with the huge boost in my ability to efficiently manage code changes) inspired this course.

## Course Schedule
- **[Prework](prework){:target="_blank"}** - Define your project team, and create and share the repo to which your team will deliver changes.

- **Session One**
   - 9:00-9:40 - Set up your team and your git repo.  Some orientation w.r.t. class and basic Git/Linux/VSCode.
   - 9:40-10:00 - LAB 1: Each member of the team commit and push at least one (non-merge-conflicting) change.  For instance, each member can add one of these files: index.html, help.html, about.html, faq.html, map.html.
   - 10:00-10:30 - Using each team's existing repo, begin to look at The Three Trees and `git reset`.
   - 10:30-11:00 - LAB 2: Each member make another commit, but before pushing, revert it using reset, make some more changes, and then recommit.
   - 11:00 - 11:30 - Walk through handling a merge conflict.
   - 11:30-11:55 - LAB 3: Each member make a change to same line [e.g. a planet list], then resolve merge conflict.
   - 11:55 - Wrap-up.
- HOMEWORK:  [3 Objects, 3 Trees Exercise](objects-and-trees-exercise){:target="_blank"}
- **Session Two** - Collaborate with your team to run the project.
   - 9:00-9:30  - Branching and merging.
   - 9:30-10:30 - LAB 4: Two or three team members collaborate on a task branch, then deliver it to main.
      - Change 'Hello World!' to 'Hello Sol!'.  Add a sun image.
      - Begin to use CSS styling.  Change the font of headers.
      - Add a list of first four planets to index.html, with content (images and/or summaries).
      - Put content in the pages: A solar system map, more help, more faqs, some about text.
      - Put padding/borders/margins around images.
   - 10:30-11:00 - Managing commits with 'git rebase' and 'git cherry-pick'.
   - 11:00-11:30 - LAB 5:
      - REBASE: Make 3 commits, then squash it to one with 'git rebase -i'.
      - CHERRY-PICK: Team lead make a separate branch, make 2 commits, and push the branch.  Each team member: Git fetch, and practice cherry-picking the first of the leader's 2 commits.
   - 11:30 - Wrap-up.

## Homework
[Objects and Trees Exercise](objects-and-trees-exercise){:target="_blank"} - Between Sessions One and Two

Work through the entire [Objects and Trees Exercise](objects-and-trees-exercise){:target="_blank"}, poking around in the project repo you started in Session 1.  We'll have already touched on these concepts, but this exercise is designed to test and expand your understanding.

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


