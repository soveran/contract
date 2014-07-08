# Provides a way to define contracts for a given function.
# The methods `define` and `verify` can be used directly.
# If the `Contract` module is included in a class, the
# methods `contract` and `verify` are added.
module Contract

  # Returns the value of the block
  # if all verifications pass
  def self.define(&block)
    catch(:contract) do
      yield
    end
  end

  # Fails unless value is true
  def self.verify(value)
    value || throw(:contract, false)
  end

  # Shorthand for Contract.define
  def contract(&block)
    Contract.define(&block)
  end

  # Shorthand for Contract.verify
  def verify(value)
    Contract.verify(value)
  end
end
