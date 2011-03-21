# Whisper-rb

[Whisper][] is a python implementation of a reimagined rrdtool database created
as part of the [Graphite][] project.

Whisper-rb is a Ruby wrapper on python implementation using rubypython.

[Whisper]: http://graphite.wikidot.com/whisper
[Graphite]: http://graphite.wikidot.com/


# Installation

The easiest way to install Whisper-rb is with RubyGems:

    $ [sudo] gem install whisper


# Usage


    >> require 'whisper'
    => true
    >> d = Whisper::Database.create('metric.wsp', [[10, 1000]])
    => #<Whisper::Database:0x101ec7a00 @path="metric.wsp">
    >> d.update(rand(1000))
    => None
    >> d.fetch((Time.now - 100).to_i)
    => ((1300665760, 1300665860, 10), [None, None, None, None, None, None, None, None, 475.0, None])
    >>


# Source

Whisper-rb is available on GitHub, which can be browsed at:

<http://github.com/eric/whisper-rb>

and cloned with:

    $ git clone git://github.com/eric/whisper-rb.git


# Contributing

Once you've made your great commits:

 1. [Fork][fk] whisper-rb
 2. Create a topic branch - `git checkout -b my_branch`
 3. Push to your branch - `git push origin my_branch`
 4. Create a Pull Request or an [Issue][is] with a link to your branch
 5. That's it!

You might want to checkout Resque's [Contributing][cb] wiki page for information
on coding standards, new features, etc.


# License

Copyright (c) 2010-2011 Eric Lindvall. See [LICENSE][] for details.


[cb]: https://wiki.github.com/defunkt/resque/contributing
[fk]: http://help.github.com/forking/
[is]: https://github.com/eric/whisper-rb/issues
[LICENSE]: https://github.com/eric/whisper-rb/blob/master/LICENSE
