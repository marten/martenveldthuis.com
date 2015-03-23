---
title: Getting Rails 3 to add methods to your JSON
layout: post
---

Previously, I'd been using something like

    respond_to do |format|
      format.js { render :json => @record.to_json(:methods => [:foo, :bar]) }
    end

But obviously, this is no longer DRY in Rails 3. So I cleaned that up to work
with the new responders:

    respond_to :html, :json

    def show
      respond_with @record
    end

But that left me with a problem: where to put the `:methods`? From the
documentation I couldn't really figure this out all that well, which is why I'm
posting this. The release notes for Rails 2.3.3 let me know that there's now an
`as_json`, which I knew, but turns out it works a bit different than I thought
I'd understood from the docs. It should basically just deliver a hash, which
will be converted to JSON by Rails. So add something like this to your model:

    def as_json(options = {})
      attributes.merge({:foo => foo,
                        :bar => bar
                       })
    end

And you'll be all set again.
