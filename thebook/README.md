# A "Github Pages" site of URL Shortener curriculum
That is, a static site that Github assembles and publishes with the Jekyll static site generator.  Jekyll understands Markdown, and uses the "Liquid" templating engine under the hood.

For more on Markdown, see the [Github Docs](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).

On git.drwholdings.com, this repo's settings are configured to publish content under `<repo-root>/docs`, to https://git.drwholdings.com/pages/apprenticeship/url_shortener.

## Running Jekyll for local previewing

### Install Ruby
On Mac, 'brew install ruby'.

On Windows, download a ruby from https://rubyinstaller.org/downloads/.  As of this writing, 2.7.-something (x64) with devkit is a decent choice.

You will need to get the path to Ruby into your PATH variable.  From a Windows git bash prompt, you might run something like this, assuming you've put Ruby in `Ruby2.7.6` under your `C:\Users\<login>` directory...
```
$ export PATH=/c/Users/cwalquist/Ruby2.7.6/bin:$PATH
```
On Mac, it's a similar procedure: Find the path, down to the `bin` level, and prepend it to the PATH variable.

### Install the Jekyll gem
Assumption: You have Ruby in your path, and the Bundler gem installed.

```bash
$ cd docs
$ bundle config set --global path vendor/bundle  # Where gemsets should go
$ bundle install --path=vendor/bundle  # Uses Gemfile and Gemfile.lock to know what to install
```

### Start Jekyll
```
$ bundle exec jekyll serve --livereload --open-url
```
At this point, Jekyll should open a preview window at http://127.0.0.1:4000 in your browser.

### Optional: Grip for single-page rendering
Mac Users: You can also use grip to render single .md pages:
```bash
$ brew install grip
$ grip README.md
```
Windows users can use grip too, but it takes setting up a Python environment:

## Developer notes
- Jekyll needs a _config.yml in this "docs" sub-directory in order to be happy running here.


