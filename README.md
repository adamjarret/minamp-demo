# minamp-demo

An example site using the
[minamp](https://github.com/adamjarret/minamp) theme for
[Hugo](https://gohugo.io).

[Live Demo](https://adamjarret.github.io/minamp-demo)

## Installation

### Prerequisites

* [git](https://git-scm.com)
* [Hugo](https://gohugo.io)

### Get the Source Code

    git clone git@github.com:adamjarret/minamp-demo.git
    cd minamp-demo
    git submodule init
    git submodule update

## Build the Site

    hugo
    
## Preview the Site

    hugo serve

## Examples

### Lodaing AMP Components

See __content/examples__ for examples of specifying required AMP components in post frontmatter.

See __content/gallery__ and __layouts/gallery__ for an example of specifying required AMP components in a layout file.

See __data/amp/components.toml__ and __layouts/partials/body-header.html__ for an example of specifying AMP
components required by every page.
