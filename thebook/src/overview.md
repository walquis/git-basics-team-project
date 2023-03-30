# Collaborating with git

[ ![](https://imgs.xkcd.com/comics/git.png) ](https://xkcd.com/1597/)

## Overview

**Goal**: Your team will become comfortable collaborating with git (unlike Cueball!)  In this two-session hands-on course, you will experience the essence of git by working as a team to build a simple static website, laying a foundation for communicating about code in a professional development environment.

Your team will collaborate on changes, working in parallel and delivering to `main`, aiming toward making your site look more or less like the site in the [sample repo](https://github.com/walquis/git-basics-sample-project-repo)'s index.html (you'll need to clone it and open index.html locally--Github shows the HTML source, not the rendered HTML).

To keep the coding part simple and allow you to focus on git, you and your team will deliver changes by adding and modifying static HTML and CSS files.  The only "webserver" is your local filesystem.

As you proceed, you will get lots of practice expressing your changes in terms of git's data model - **The Three Objects** - and moving them around in git's state model - **The Three Trees**.
- The **three objects** - blob, tree, commit
- The **three trees** - HEAD, index, workspace

Along the way, we will learn and practice some [Common Git Workflows](common-git-workflows.md), especially those built around **Pull Requests**. For instance, as your team begins to deliver completed tasks, you will run into challenges (merge conflicts!) associated with working in parallel on a code base, and you will practice using git's (and Github's) features to resolve them.

Keep your page viable as you deliver each change to `main`. &nbsp;&nbsp;Don't "break the build"!

By the end of our time, we'll have substantially covered the topics in the [Course Syllabus](syllabus.md).

I've presented some variation of this material to every CodePlatoon cohort since Bravo.  Equipped with a firm grasp of these git fundamentals, graduates have reported that they have become go-to resources for git in their software teams.

### About the instructor
As a devops professional with three-ish decades of experience in version control, I first experienced git in 2009 when developers insisted on bringing it into the company.  I learned a few basic survival commands, but it wasn't really clicking for me. Depressingly often for a version control "expert", I got out of my depth and had to be rescued.

Eventually I tired of memorizing magic spells and decided to buckle down and learn the basics of git once-and-for-all.  Suddenly, git started making sense!  That sense of enlightenment (along with the huge boost in my ability to efficiently manage code changes) inspired this course.

