# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_print_invoice/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_print_invoice'
  s.version     = SpreePrintInvoice.version
  s.summary     = 'Print invoices and slips from Spree Commerce'
  s.description = s.summary
  s.required_ruby_version = '>= 2.3.0'

  s.author       = 'Jared Murphy'
  s.email        = 'jared@shopfelixgray.com'
  s.homepage     = 'https://github.com/ShopFelixGray/spree_print_invoice'
  s.license      = 'BSD-3-Clause'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 3.1.0', '< 4.0'
  s.add_dependency 'spree_extension'
  s.add_dependency 'prawn', '~> 1.0.0'

  s.add_development_dependency 'capybara', '~> 2.7'
  s.add_development_dependency 'poltergeist', '~> 1.17'
  s.add_development_dependency 'factory_girl', '~> 4.9'
  s.add_development_dependency 'rspec-rails', '~> 3.7.2'
  s.add_development_dependency 'simplecov', '~> 0.16.1'
  s.add_development_dependency 'sqlite3', '~> 1.3.13'
  s.add_development_dependency 'database_cleaner', '~> 1.6.2'
  s.add_development_dependency 'coffee-rails', '~> 4.2.2'
  s.add_development_dependency 'sass-rails', '~> 5.0.7'
  s.add_development_dependency 'pdf-inspector', '~> 1.3.0'
  s.add_development_dependency 'ffaker', '>= 2.9.0'
  s.add_development_dependency 'guard-rspec', '>= 4.7.3'
  s.add_development_dependency 'pry-rails', '>= 0.3.6'
  s.add_development_dependency 'rubocop', '>= 0.54.0'
end
