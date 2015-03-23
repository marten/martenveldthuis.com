---
title: Compass + Rails 3.1
layout: post
---

Spend a little time debugging something with Rails 3.1, the asset pipeline and
the Compass 0.12.alpha release. First of all, [this
gist](https://gist.github.com/1184843) works perfectly. Except we had Rails
configured so that it would compile assets in production.  Compilation then
failed with the error that it couldn't find "compass/reset".

The problem was that we had the compass gem in the assets group in Gemfile, but
ofcourse that group wasn't loaded in production.

(And yes, I do realize this was my own dumb fault. But I'm putting it here for
Google.)
