require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'report_builder'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'capybara/poltergeist'
require 'rspec/retry'
require 'faker'
require 'documentos_br'

def load_yaml_file(path)
  YAML.load_file(File.dirname(__FILE__) + path)
end

INMETRICS_CONFIG = load_yaml_file("/config/config.yaml")
INMETRICS_STANDARD_DATA = load_yaml_file('/data/inmetrics/standard.yaml')

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end
