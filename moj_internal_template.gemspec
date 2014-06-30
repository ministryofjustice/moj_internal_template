# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Maintain your gem's version:
require "moj_internal_template/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "moj_internal_template"
  s.version     = MojInternalTemplate::VERSION
  s.authors     = ["Dom Smith"]
  s.email       = ["dom.smith@digital.justice.gov.uk"]
  s.homepage    = "https://github.com/ministryofjustice/moj_template"
  s.summary     = "MOJ DS Template"
  s.description = "Basic template for MOJ internal services"
  s.license     = "MIT"

  s.files          = Dir["{app,lib}/**/*"] + ["LICENCE.txt"]
  s.require_paths  = ["lib"]

  s.add_dependency 'rails', '>= 3.1'

  s.add_development_dependency 'rake'
  s.add_dependency 'govuk_template', '0.8.1'
  s.add_dependency 'govuk_frontend_toolkit', '1.3.0'
  s.add_development_dependency 'gem_publisher', '1.3.1'
  s.add_development_dependency 'rspec', '2.14.1'
end
