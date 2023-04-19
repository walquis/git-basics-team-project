## Installing mdBook for building/running

https://rust-lang.github.io/mdBook/guide/installation.html

## Serving the book locally
Use this when authoring.
```
$ mdbook serve  # builds, watches for changes, refreshes local browser on change.
```

## Building and publishing the book
Builds the book as static HTML into the `docs` directory.  When pushed to GitHub, this directory is published by Github Pages.

Recommended: Add/commit your source code changes before you "mdbook build" and publish the output.

```
# Assuming your source code changes have already been added/committed...
$ cd thebook
$ mdbook build
$ cd ..
$ git add docs
$ git commit -m "mdbook build"
$ git push
```

The markdown source code lives in the `thebook/src` directory, which looks like a working website if you click around in it, but you'll notice that some links may not work, there is no table of contents, etc.  When mdBook-built changes in `docs/` are pushed, Github sees them and publishes them properly.  See [Github Pages](https://pages.github.com) if curious how to publish pages from your repos (mdBook is only one of many ways to do this).
