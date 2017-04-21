# bjn_ruby ![Version](https://img.shields.io/cookbook/v/bjn_ruby.svg?style=flat-square)

Installs the [Ruby](https://www.ruby-lang.org/en/) programming language from
the [Brightbox repository](https://launchpad.net/~brightbox/+archive/ubuntu/ruby-ng).
Also includes common ancillary packages (e.g. `bundler`).

## Requirements

This cookbook depends on `apt` and `magic`. The following platforms are
officially supported:

* Ubuntu 12.04
* Ubuntu 14.04

## Attributes

Attributes are documented inline, so check out `attributes/default.rb`. You
prolly don't want to touch anything except the version, though.

## Recipes

This cookbook contains only a `default` recipe, which installs Ruby and friends.