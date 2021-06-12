# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-postcss-v2/version"

Gem::Specification.new do |spec| # rubocop:disable Metrics/BlockLength
  spec.name          = "jekyll-postcss-v2"
  spec.version       = Jekyll::PostCssV2::VERSION
  spec.authors       = ["Liam Bigelow"]
  spec.email         = ["liam@bigelow.io"]
  spec.summary       = "Straight up PostCSS for Jekyll."
  spec.description   = "Straight up PostCSS for Jekyll."
  spec.homepage      = "https://github.com/bglw/jekyll-postcss-v2"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = spec.homepage
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r!^(test|spec|features)/!) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r!^exe/!) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "jekyll", ">= 3.0"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop-jekyll", "~> 0.5.1"
end
