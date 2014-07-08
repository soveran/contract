require_relative "../lib/contract"

class Foo
  def foo(a, b)
    Contract.define do
      Contract.verify(Numeric === a)
      Contract.verify(Numeric === b)

      a * b
    end
  end
end

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

test "direct" do
  assert_equal 6,     Foo.new.foo(2, 3)
  assert_equal false, Foo.new.foo(2, "3")
end

test "included" do
  assert_equal 6,     Bar.new.bar(2, 3)
  assert_equal false, Bar.new.bar(2, "3")
end
