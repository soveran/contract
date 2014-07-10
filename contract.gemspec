Gem::Specification.new do |s|
  s.name              = "contract"
  s.version           = "0.1.0"
  s.summary           = "Contract helper"
  s.description       = "Contract helper"
  s.authors           = ["Michel Martens"]
  s.email             = ["michel@soveran.com"]
  s.homepage          = "http://github.com/soveran/contract"

  s.files = `git ls-files`.split("\n")

  s.add_development_dependency "cutest"
end
