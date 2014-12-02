# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'docker_client/version'

Gem::Specification.new do |spec|
  spec.name          = "docker_client"
  spec.version       = DockerClient::VERSION
  spec.authors       = ["WuLonghui 00228948"]
  spec.email         = ["wulonghui@huawei.com"]
  spec.summary       = %q{A ruby docker client library}
  spec.description   = %q{A ruby docker client library}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency("docker-api")

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 3.0'
end
