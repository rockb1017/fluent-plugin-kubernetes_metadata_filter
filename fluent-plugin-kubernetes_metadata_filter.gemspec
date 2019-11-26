# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "fluent-plugin-kubernetes_metadata_filter_splunk"
  gem.version       = "2.2.0"
  gem.authors       = ["Rock Baek"]
  gem.email         = ["rockb1017@gmail.com"]
  gem.description   = %q{Filter plugin to add Kubernetes metadata with custom caching algorithm by Cisco}
  gem.summary       = %q{Fluentd filter plugin to add Kubernetes metadata}
  gem.homepage      = ""
  gem.license       = "Apache-2.0"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = '>= 2.1.0'

  gem.add_runtime_dependency 'fluentd', ['>= 0.14.0', '< 2']
  gem.add_runtime_dependency "lru_redux"
  gem.add_runtime_dependency "kubeclient", "~> 1.1.4"

  gem.add_development_dependency "bundler", "~> 1.3"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "minitest", "~> 4.0"
  gem.add_development_dependency "test-unit", "~> 3.0.2"
  gem.add_development_dependency "test-unit-rr", "~> 1.0.3"
  gem.add_development_dependency "copyright-header"
  gem.add_development_dependency "webmock"
  gem.add_development_dependency "vcr"
  gem.add_development_dependency "bump"
  gem.add_development_dependency "yajl-ruby"
end
