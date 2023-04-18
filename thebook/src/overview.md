# Collaborating with git

[ ![](https://imgs.xkcd.com/comics/git.png) ](https://xkcd.com/1597/)

## Overview

**Goal**: Unlike [Cueball](https://www.explainxkcd.com/wiki/index.php/Cueball), your team will learn git well enough to collaborate effectively with it! In this two-session hands-on course, you will work as a team to build a simple static website, laying a foundation for communicating about code in a professional development environment.

You will build practical skills with git through hands-on work with git's _data model_ - **The Three Objects**[^3objs] - and moving them around in git's _state model_ - **The Three Trees**[^3trees].

Another major theme is **workflows**.  We will learn and practice some [Common Git Workflows](common-git-workflows.md), especially those built around **Pull Requests**, as we build our site. For instance, as your team begins to deliver code, you will encounter challenges (merge conflicts!) inherent to concurrent work on a shared code base, and you will practice using git's and Github's features to resolve them.

Your team will collaborate by working concurrently on changes and delivering to `main`, aiming toward making your site look more or less like `index.html` in the [sample repo](https://github.com/walquis/git-basics-sample-project-repo).[^sample-repo-note]

Coding will be kept simple to allow you to focus on git skills; you and your team will modify static HTML and CSS files.  The only "webserver" is your local filesystem.

Keep your website viable as you deliver each change to `main`. &nbsp;&nbsp;Don't "break the build"!

By the end of our time, we'll have substantially covered the topics in the [Course Syllabus](syllabus.md).

### About the instructor
As a devops professional with three-ish decades of experience in version control, I first experienced git in 2009 when our developers insisted on bringing it into the company.  I learned a few basic survival commands, but it wasn't really clicking for me. Depressingly often for a version control "expert", I got out of my depth and had to be rescued.

Eventually I tired of memorizing magic spells and decided to buckle down and learn the basics of git.  Suddenly, git started making sense😮!  That feeling of enlightenment, along with the big boost in my productivity, helped inspire this course.

I've presented some variation of this material to every CodePlatoon cohort since Bravo.  Equipped with a firm grasp of these git fundamentals, graduates have reported that they have become go-to resources for git in their software teams.

---
[^3objs]: The **three objects** are `commit`, `tree`, `blob

[^3trees]: The **three trees** are `HEAD`, `index`, `working tree`

[^sample-repo-note]:  You can't view the rendered `index.html` directly from Github, which only shows the HTML source.  View it by cloning the [sample repo](https://github.com/walquis/git-basics-sample-project-repo) and opening `index.html` in your browser (via "File --> Open File...").
