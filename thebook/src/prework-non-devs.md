# Prework (For Non-Developers)

If Version Control, Git and the Bash shell are all new to you, start with this page.

From here, the next step is [Prework - For All Students](./prework.md).

## Bash
Watch [Hallden. "Linux Commands You Need to Know"](https://www.youtube.com/watch?v=J2zquYPJbWY) - 12 minutes.  Can probly put it on 2x playback without missing much.  Keep an eye out for these commands:
- `ls` and its '-l', '-a', '-r', and '-t' options
- `cd`  - change directory
- `mkdir` - 'make directory'
- `pwd` - print working directory
- `rm` and its `-r` and `-f` options.  Also `rmdir`.
- `mv` - move files/dirs
- `cp` - copy files

Not in this video, but worth knowing:
- `grep` - 'get regular expression and print' - very powerful, esp. with `-r`, `-i`, and/or `-l`
- `cat` - 'concatenate' - see file contents

Also, these key concepts are essential to Linux:
- [**Environment Variables**](https://likegeeks.com/linux-environment-variables/), especially the `PATH` environment variable.
- [Standard Input (**STDIN**), Standard Output (**STDOUT**), Standard Error (**STDERR**)](https://likegeeks.com/shell-scripting-awesome-guide-part4/)
- [**Pipes** (that is, the vertical bar, `|`) and **I/O Redirection**](https://ryanstutorials.net/linuxtutorial/piping.php) (e.g., `<`, `>`, `<<`, `>>`, `2>&1`).
- [Shell config files: `.bash_profile` and `.bashrc` (for the Bash shell)](https://effective-shell.com/part-5-building-your-toolkit/configuring-the-shell/).

A summary of commands covered in the above videos is [here](./prework-non-devs-video-outlines.md).

## Why version control, and why Git
- Watch [Colt Steele. "Learn Git in 15 minutes"](https://www.youtube.com/watch?v=USjZcfj8yxE) - comes with a transcript and covers the right stuff in the terminal.
- Watch [Fireship Learning. "Git it? How to use Git and Github"](https://www.youtube.com/watch?v=HkdAHXoRtos) - 12 minutes. Covers the right stuff and does it in vscode in the terminal. A bonus is that it shows the fork / clone idea, which will be used in Git Basics.

## Overview of the website

This course works with source files for a static website--"static", meaning no Javascript code is involved.  In this case, neither are there any build processes nor templates nor frameworks.  There are only HTML files, a `styles.css` file, and a handful of images.

That said, even a simple static site provides plenty of complexity for exercising collaboration.  For instance, suppose two teammates each add a menu link to `index.html`.  One adds a link to "help", and the other adds a link to "faq".  When they attempt to push their changes, not only will a merge be required, but a **merge conflict** will almost certainly result, and need resolving. 

The [starter repo](https://github.com/walquis/git-basics-starter-repo) has these files:
```
.
├── about.html
├── bin
│   ├── append-aliases-to-profile.sh
│   └── git-aliases.sh
├── faq.html
├── help.html
├── images
│   ├── earth.jpg
│   ├── mars.jpg
│   ├── mercury.jpg
│   ├── solar-system-subway-map-ulysse-carion.png
│   ├── sun-coronal-mass-ejection.jpg
│   └── venus.jpg
├── index.html
├── map.html
├── .gitignore
└── styles.css
```
- The five HTML files each correspond to a page on the website: `index.html` (the home page), `about.html`, `faq.html`, `help.html`, and `map.html`.
- The `images/` directory contains images that you'll later reference with `<img>` tags.
- The `styles.css` file isn't used yet; you'll be directed to add it to `index.html`, something like [this](https://github.com/walquis/git-basics-sample-project-repo/commit/da56c38e92e62408c1affd6c71e19ff87f0d93b6), to change the look of the website.
- The `bin` directory is not part of the website, but contains useful git command shortcuts we'll use during the course.
- `.gitignore` is also not part of the website (and not visible unless you use `ls -a`).
