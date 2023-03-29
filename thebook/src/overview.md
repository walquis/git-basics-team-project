# Collaborating with git

[ ![](https://imgs.xkcd.com/comics/git.png) ](https://xkcd.com/1597/){:target="_blank"}

## Contents
- [Course Schedule](#course-schedule) - Prework, Session One, Homework, Session Two
- [References](#references) - Mostly links to [git-scm.com](https://git-scm.com)
- [Site Map](#site-map) - All the pages

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
The **[Prework](prework){:target="_blank"}** consists of...
1. Defining your project team and team lead,
2. The team lead creating and sharing the empty repo to which your team will deliver changes, and
3. Taking a look at a sample project repo.

### **Session One**
   - 40 min - Set up your team and your git repo.  Some orientation w.r.t. class and basic Git/Linux/VSCode.
   - 20 min - **LAB 1 - local/remote workflow**:
   > Each member of the team commit and push at least one (non-merge-conflicting) change.  For instance, each member
   > can add one of these files: `index.html`, `help.html`, `about.html`, `faq.html`, `map.html`.
   - 30 min - Using each team's existing repo and `git reset`, demonstrate moving changes back and forth in [The Three Trees](objects-and-trees-exercise){:target="_blank"}.
   - 30 min - **LAB 2 - `git reset`**:
   > Each member make changes and commit them locally (do not push them!). Then revert changes using `git reset`,
   > make some more changes, and recommit.  Be sure to try out each of \--soft, \--mixed, and \--hard.
   - 30 min - Walk the class through creating and resolving a merge conflict.
   - 30 min - **LAB 3 - merge conflicts**:
   > Each team member make a change to the same line in a file (e.g. Change "The Solar System" in `index.html`
   > to some other text), and commit.  One team member pushes; the others pull, and then will need to resolve the merge conflict.

### [3 Objects, 3 Trees Exercise](objects-and-trees-exercise){:target="_blank"}

(In a 2-day format, this could be assigned as homework). Work through the entire [Objects and Trees Exercise](objects-and-trees-exercise){:target="_blank"}, poking around in the project repo you started in Session 1.  We'll have already touched on these concepts, but this exercise is designed to test and expand your understanding.

### **Session Two** - Collaborate with your team to run the project.
   - 30 min - Branching and merging.  A look at a [sample project repo](https://github.com/git-basics-sample-project-repo){:target="_blank"}.
   - 30 min - **LAB 4 - project collaboration**:
   > Feel free to use the [sample project repo's commits](https://github.com/git-basics-sample-project-repo/commits/main){:target="_blank"} for inspiration as to what your team should do.  For instance...
   >   - [Add a sun image](https://github.com/git-basics-sample-project-repo/commit/aa7f0ba34df76ddb38912f753457e07108a7c704){:target="_blank"}.
   >   - [Begin to use CSS styling](https://github.com/git-basics-sample-project-repo/commit/da56c38e92e62408c1affd6c71e19ff87f0d93b6){:target="_blank"}.
   >   - [Add a list of the first four planets to index.html](https://github.com/git-basics-sample-project-repo/commit/b4b184b40299ad852dd9cd51e0d4279f795ae98f){:target="_blank"}, with content (images and/or summaries).
   >   - Put content in the pages: [A solar system map](https://github.com/git-basics-sample-project-repo/commit/4119092cac8ccdeb1b4a3ad719a6cf87d3229502){:target="_blank"}, more help, [more faqs](https://github.com/git-basics-sample-project-repo/commit/5e1d8be4574fae345ac779bddc95f73dd0bf3cc0){:target="_blank"}, [some about text](https://github.com/git-basics-sample-project-repo/commit/4c461a996aad0fd5bfa420ac366139805bf334bf){:target="_blank"}.
   >   - [Put padding/borders/margins around images](https://github.com/git-basics-sample-project-repo/commit/d0095aa699e00873c305d62ecd97727bcc4c5bba){:target="_blank"}.
>>>>>>> 7373cf9 (Spruce up the lab instructions a bit.  Remove stray ref to team repo in prework.)
   - 30 min - Managing commits with 'git rebase' and 'git cherry-pick'. \[Demonstrate squashing the sample repo's last 3 commits.  Discuss the caveats of altering already-pushed commits].
   - 30 min - **LAB 5 - rebase and cherry-pick**
      > - **REBASE**: Make 3 commits, then squash it to one with 'git rebase -i'.
      > - **CHERRY-PICK**: Team lead make a separate branch, make 2 commits, and push the branch.  Each team member: Git fetch, and practice cherry-picking the first of the leader's 2 commits.
   - if time - **LAB 6 - More project collaboration**:
     > Keep delivering changes to your website.  If time, practice on any skills that might not have fully sunk in yet (e.g. rebase).
   - 5-10 min - Wrap-up.  Provide link to feedback survey.

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
- [Rebase](https://git-scm.com/book/en/v2/Git-Branching-Rebasing){:target="_blank"} - Replay a string of commits onto another place
- [Cherry-pick](https://git-scm.com/book/en/v2/Appendix-C:-Git-Commands-Patching){:target="_blank"} - grab a commit from another branch
- [Bisect](https://git-scm.com/book/en/v2/Git-Tools-Debugging-with-Git){:target="_blank"} - Find the commit with the bug
- __Highly Recommended__ - A bash tutorial, such as [Bash Scripting For Beginners](https://linuxconfig.org/bash-scripting-tutorial-for-beginners){:target="_blank"}.  At a minimum, know these [basic Linux commands](unix-shell-concepts).
- __Be Your Own Best Friend__ - Learn Vim.  Just learn it.  [Here](https://www.openvim.com/){:target="_blank"}, [here](https://linuxconfig.org/vim-tutorial){:target="_blank"}, [here](https://www.tutorialspoint.com/vim/index.htm){:target="_blank"}, and/or [here](https://vim-adventures.com/){:target="_blank"}.

## Site Map

- [Home (this page)](index){:target="_blank"}
- [Syllabus - concepts to be covered](syllabus){:target="_blank"}
- [Prework](prework){:target="_blank"}
- [Homework exercise - 3 Objects, 3 Trees](objects-and-trees-exercise){:target="_blank"}
- [The sample project repo](https://github.com/walquis/git-basics-sample-project-repo){:target="_blank"}
- [Common Git Workflows](common-git-workflows){:target="_blank"}
- [Viewing Changes](viewing-changes){:target="_blank"}
- [Unix and Shell Concepts](unix-shell-concepts){:target="_blank"}
