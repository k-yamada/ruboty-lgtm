# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ruboty/lgtmin/version"

Gem::Specification.new do |spec|
  spec.name          = "ruboty-lgtmin"
  spec.version       = Ruboty::Lgtmin::VERSION
  spec.authors       = ["k-yamada"]
  spec.email         = ["yamadakazu45@gmail.com"]

  spec.summary       = %q{Fetch image randomly from LGTM.in}
  spec.homepage      = "https://github.com/k-yamada/ruboty-lgtmin"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "nokogiri"
end
