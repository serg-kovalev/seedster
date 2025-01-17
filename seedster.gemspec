lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "seedster/version"

Gem::Specification.new do |spec|
  spec.name          = "seedster"
  spec.version       = Seedster::VERSION
  spec.authors       = ["Groupon"]
  spec.email         = ["opensource@groupon.com"]

  spec.summary       = %q{Work with real content in development}
  spec.description   = %q{Easily load real application content for local development}
  spec.homepage      = "https://github.com/groupon/seedster"
  spec.license       = "Apache-2.0"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
