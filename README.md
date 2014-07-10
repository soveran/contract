# Contract helper

This module provides a way to define contracts in functions, and
return a value based on a series of user defined verifications.

## Usage

The functions of a contract can be used directly from the
`Contract` module:

``` ruby
class Foo
  def foo(a, b)
    Contract.contract do
      Contract.verify(Numeric === a)
      Contract.verify(Numeric === b)

      a * b
    end
  end
end

assert_equal 6,     Foo.new.foo(2, 3)
assert_equal false, Foo.new.foo(2, "3")
```

When the `Contract` module is included, the methods `contract` and
`verify` become available.

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

assert_equal 6,     Bar.new.bar(2, 3)
assert_equal false, Bar.new.bar(2, "3")
```

## Installation

      $ gem install contract
