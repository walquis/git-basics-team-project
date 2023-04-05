# Session 2  - Exercising your new git skills
### Where to Start?  With a Github project board!


#### LAB - Start your project board

#### LAB - Each Team, Run your project

### Intro to `git rebase`


#### Avoid Unnecessary Merge Commits
Discuss the statement, "Rebase is a destructive operation".  This is an opportunity to further sink in the concept of how SHAs are created: by hashing a git object's contents.
- _What is being destroyed?_  Even if a commit's **content** remains the same (its trees and blobs), the commit itself is going to have different content (e.g., date).  Therefore, if another commit B was pointing to commit A, that commit B will not hear about A's replacement.

#### LAB - Simulate the above scenario and practice resolving it with `git rebase`:

#### Interactive rebase (`git rebase -i`) -- Edit Commit History Before Pushing

#### LAB - Make 3 or 4 commits on current branch, and squash/rearrange with `git rebase -i`

### Intro to `git cherry-pick` -- if time

### Wrap-up

- Xavier and Ned - Put padding/borders/margins around images.
  - Xavier - create the branch, make the CSS class
  - Ned - add the class references to the images
- Apply Caesar Dressing font to h1 HTML elements.
  - Nykhia - Update the head section in the layouts.
  - Dex - Define the CSS class for h1.
- Ned and Deja - Apply flex display to planets.
  - Ned - Make the CSS classes
  - Deja - Apply to the planets

