# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Maintain your gem's version:
require "moj_internal_template/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "moj_internal_template"
  s.version     = MojInternalTemplate::VERSION
  s.authors     = ["Paul Battley"]
  s.email       = ["paul.battley@digital.justice.gov.uk"]
  s.homepage    = "https://github.com/ministryofjustice/moj_internal_template"
  s.summary     = "MoJ internal template"
  s.description = "Template for Ministry of Justice internal services"
  s.license     = "MIT"

  s.files          = Dir["{app,lib}/**/*"] + ["LICENCE.txt", "README.md"]
  s.require_paths  = ["lib"]

  s.add_dependency 'rails', '~> 4'

  s.add_development_dependency 'rake', '~> 0'
  s.add_dependency 'govuk_template', '0.8.1'
  s.add_dependency 'govuk_frontend_toolkit', '1.3.0'
  s.add_development_dependency 'gem_publisher', '1.3.1'
  s.add_development_dependency 'rspec', '2.14.1'
end
