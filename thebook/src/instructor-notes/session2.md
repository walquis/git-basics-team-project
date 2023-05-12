# Session 2  - Exercising your new git skills

## Intro to `git rebase`

### Avoid Unnecessary Merge Commits
🤔 Discuss the statement, "Rebase is a destructive operation".  This is an opportunity to further sink in the concept of how SHAs are created: by hashing a git object's contents.
- _What is being destroyed?_  **History**; existing commits are being changed with **rebase** (by contrast, with **merge**, a new commit is created instead).  Even if a commit's **content** remains the same (its trees and blobs), the commit itself is going to have different content (e.g., date).  Therefore, if another commit B was pointing to commit A, that commit B will not hear about A's replacement.  Same goes for branches (with the exception of the branch being rebased); if they were pointing to the old string of commits, they will not be automatically updated to point to the corresponding commit in the new string.

#### LAB - Simulate the above scenario and practice resolving it with `git rebase`:

#### Interactive rebase (`git rebase -i`) -- Edit Commit History Before Pushing

#### LAB - Make 3 or 4 commits on current branch, and squash/rearrange with `git rebase -i`

### Intro to `git cherry-pick` -- if time

### Github project boards

#### LAB - Start your project board

#### LAB - Each Team, Run your project

### Wrap-up

[link to feedback survey]

- Xavier and Ned - Put padding/borders/margins around images.
  - Xavier - create the branch, make the CSS class
  - Ned - add the class references to the images
- Apply Caesar Dressing font to h1 HTML elements.
  - Nykhia - Update the head section in the layouts.
  - Dex - Define the CSS class for h1.
- Ned and Deja - Apply flex display to planets.
  - Ned - Make the CSS classes
  - Deja - Apply to the planets

