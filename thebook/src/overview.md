# Collaborating with git

[ ![](https://imgs.xkcd.com/comics/git.png) ](https://xkcd.com/1597/)

## Overview

**Goal**: Unlike Cueball in XKCD, your team will actually learn git well enough to collaborate effectively with it! In this two-session hands-on course, you will work as a team to build a simple static website, laying a foundation for communicating about code in a professional development environment.

The course builds practical skills with git through hands-on work with git's _data model_ - **The Three Objects**[^3objs] - and moving them around in git's _state model_ - **The Three Trees**[^3trees].

Another major theme is **workflows**.  We will learn and practice some [Common Git Workflows](common-git-workflows.md), especially those built around **Pull Requests**, as we build our site. For instance, as your team begins to deliver code, you will encounter challenges (merge conflicts!) inherent in with working in parallel on a code base, and you will practice using git's and Github's features to resolve them.

Your team will collaborate by working in parallel on changes and delivering to `main`, aiming toward making your site look more or less like the site in the [sample repo](https://github.com/walquis/git-basics-sample-project-repo)'s `index.html`[^sample-repo-note]

To keep the coding part simple and allow you to focus on git skills, you and your team will modify static HTML and CSS files.  The only "webserver" is your local filesystem.

Keep your website viable as you deliver each change to `main`. &nbsp;&nbsp;Don't "break the build"!

By the end of our time, we'll have substantially covered the topics in the [Course Syllabus](syllabus.md).

I've presented some variation of this material to every CodePlatoon cohort since Bravo.  Equipped with a firm grasp of these git fundamentals, graduates have reported that they have become go-to resources for git in their software teams.

### About the instructor
As a devops professional with three-ish decades of experience in version control, I first experienced git in 2009 when our developers insisted on bringing it into the company.  I learned a few basic survival commands, but it wasn't really clicking for me. Depressingly often for a version control "expert", I got out of my depth and had to be rescued.

Eventually I tired of memorizing magic spells and decided to buckle down and learn the basics of git once-and-for-all.  Suddenly, git started making sense!  That sense of enlightenment (along with the huge boost in my ability to efficiently manage code changes) helped inspire this course.

---
[^3objs]: The **three objects** are `commit`, `tree`, `blob

[^3trees]: The **three trees** are `HEAD`, `index`, `workspace`

[^sample-repo-note]:  You can't view the rendered `index.html` directly from Github; it only shows the HTML source.  When you clone the [sample repo](https://github.com/walquis/git-basics-sample-project-repo), you can view it by choosing "File --> Open File..." in your browser, and navigating to the `index.html` in your local repo. 
