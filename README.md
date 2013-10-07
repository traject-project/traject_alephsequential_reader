# traject_alephsequential_reader

* [Homepage](https://github.com/billdueber/traject_alephsequential_reader#readme)
* [Issues](https://github.com/billdueber/traject_alephsequential_reader/issues)
* [Documentation](http://rubydoc.info/gems/traject_alephsequential_reader/frames)
* [Email](mailto:bill at dueber.com)

## Description

A paper-thin wrapper around [marc_alephsequential](http://github.com/billdueberb/marc_alephsequential) for use in the
[traject](http://github.com/jrochkind/traject/) indexing software.

Will transparently deal with gzipped files so long as their name ends in '.gz'.

For features of the reader itself, see [marc_alephsequential](http://github.com/billdueberb/marc_alephsequential).


## Examples

```ruby

# A sample traject configuration file to use an alephseqential source
require 'traject_alephsequential_reader'

settings do
  store "reader_class_name", "Traject::AlephSequentialReader"
end
```

## Install

    $ gem install traject_alephsequential_reader

## Copyright

Copyright (c) 2013 Bill Dueber

See {file:LICENSE.txt} for details.
