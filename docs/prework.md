# Prework for Collaboration-With-Git Exercise

## Environment assumptions
This exercise assumes you have ...
1. A [GitHub](https://github.com){:target="_blank"} account.
1. Visual Studio Code installed.
1. The [Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph){:target="_blank"} plugin installed in VSCode.

## Choose a Project Team Lead

## *Project Team Lead* - Create an empty repo on https://github.com, and invite the rest of the team as collaborators to your fork.

## *Each Team Member* - `git clone` your team lead's fork to your local machine.


TODO 1. Fork [https://github.com/walquis/tags](https://github.com/walquis/tags){:target="_blank"} (but note that when the actual project starts, you'll need to clone a fresh copy from your *team lead's* fork, not your own fork---so that you'll be able to push changes to a shared repo).

TODO 2. Clone your fork
Run these commands in a Terminal session (for best results, I recommend starting Terminal.app separately, rather than running a terminal session within your IDE).  You should be able to copy/paste these shell commands pretty much verbatim, except that you need to replace \<yourlogin\> with your own login.

NOTE: Again, I highly recommend opening shell windows using the Terminal app on your Mac, and not the shell opened by your IDE ("Integrated Development Environment", e.g. Visual Studio Code).  IDE environment-handling adds a layer of complexity that tends to thwart our purposes here. (If you know exactly how your IDE manages its shell environment, then go right ahead).

```bash
cd                          # Start from your home directory
mkdir -p src
cd src                      # Or cd to wherever you keep code projects
git clone https://github.com/<yourlogin>/tags    # Clone your fork
# (Note that when the actual project exercise starts, you'll need to re-clone from your team lead's fork).
cd tags
```

![hello-world changes viewed in SourceTree](images/hello-world-changes-in-sourcetree.png)

#### make-a-template
Now checkout the `make-a-template` branch.  (If you have `python manage.py runserver` running in a separate Terminal window, it will see the changes and reload the server automatically).

It's a little "hard-coded" to put the actual HTML in the same file as the view logic, so this change moves the "Hello, World!" into a template file.  In config/settings.py, we tell Django where to look for templates.

No functionality has changed at http://localhost:8000, but now we're better positioned to make changes, such as...

#### about-page
Checkout the `about-page` branch. The /about route is added in urls.py, and its content as a template file.

#### Continuing ...
Keep checking out successive branches, viewing code changes in SourceTree while you observe the behavior in the browser.

```bash
# Assuming you have cd'd to the tags repo already...
cd mild
open tags.html  # Should pop open an empty page in your browser.
```

### Explore the code
You're on the `master` branch of this repo, and the mild/tags.html page you opened is where you'll build up some static HTML.  The only "webserver" is your filesystem (which, although very simple does not get you very far, as we will see).

Let's work our way through the set of sample changes by checking out the corresponding branches, starting from `master` and progressing to the tip of the `10-mild-sample-solution` branch (the "mild" branches are prefixed with a number and "-mild-").  See [Viewing Changes](viewing-changes){:target="_blank"} for hints and tips.

#### 1-mild-hello-world
Check out the `hello-world` branch:
```
$ git checkout 1-mild-hello-world
Branch '1-mild-hello-world' set up to track remote branch 'hello-world' from 'origin'.
Switched to a new branch '1-mild-hello-world'
$
```

Refresh your page.  You should see "Hello, World!" displayed.  In SourceTree, select the relevant commits to see what had to happen to make this work. (For mild, not much!)

#### 2-mild-about-page

Now checkout the ```2-mild-about-page``` branch, and refresh your browser.  Examine the commit in SourceTree.  Why doesn't the browser change?  Because the about.html page has been added, but there is no link to it from tags.html.  (In light of that shortcoming, how would you view about.html?)

#### Continuing …

Keep checking out successive "<number>-mild-*" branches, refreshing your browser and viewing code changes in SourceTree.

## What's Next?

In class, you and your team will be making these same changes, but **in parallel**, getting a taste of what collaboration looks like with git.

## Bonus prework - explore some [Unix/Shell Concepts](unix-shell-concepts)
I'll cover these *very* briefly in class, but feel free to google around on your own, focusing on the bash shell.
