# Provides a way to define contracts for a given function.
# The methods `define` and `verify` can be used directly.
# If the `Contract` module is included in a class, the
# methods `contract` and `verify` are added.
module Contract

  # Returns the value of the block
  # if all verifications pass
  def contract
    catch(:contract) do
      yield
    end
  end

  # Fails unless value is true
  def verify(value)
    value || throw(:contract, false)
  end

  module_function :contract
  module_function :verify
end
