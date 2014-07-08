# Contract helper

This module provides a way to define contracts in functions, and
return a value based on a series of user defined verifications.

## Usage

The functions of a contract can be used directly from the
`Contract` module:

``` ruby
class Foo
  def foo(a, b)
    Contract.define do
      Contract.verify(Numeric === a)
      Contract.verify(Numeric === b)

      a * b
    end
  end
end
```

``` ruby
class Bar
  include Contract

  def bar(a, b)
    contract do
      verify(Numeric === a)
      verify(Numeric === b)

      a * b
    end
  end
end
```

When the `Contract` module is included, the methods `contract` and
`verify` become available.

## Installation

      $ gem install contract
