# -*- encoding: utf-8 -*-
lib = File.expand_path('lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
require 'date'

Gem::Specification.new do |gem|
  gem.name     = "gssapi-factual"
  gem.version  = File.open('VERSION').readline.chomp
  gem.date     = Date.today.to_s
  gem.platform = Gem::Platform::RUBY
  gem.rubyforge_project  = nil

  gem.authors = ["Dan Wanek", "Jorge Israel Peña"]
  gem.email = ["dan.wanek@gmail.com", "jorge@factual.com"]
  gem.homepage = "http://github.com/Factual/gssapi"
  gem.license = "MIT"

  gem.summary = "A FFI wrapper around the system GSSAPI library."
  gem.description	= <<-EOF
    A FFI wrapper around the system GSSAPI library. Please make sure and read the
    Yard docs or standard GSSAPI documentation if you have any questions.

    There is also a class called GSSAPI::Simple that wraps many of the common features
    used for GSSAPI.
  EOF

  gem.files = `git ls-files`.split(/\n/)
  gem.require_path = "lib"
  gem.rdoc_options	= %w(-x test/ -x examples/)
  gem.extra_rdoc_files = %w(README.md COPYING Changelog.md)

  gem.required_ruby_version	= '>= 1.8.7'
  gem.add_runtime_dependency  'ffi', '>= 1.0.1'
end
