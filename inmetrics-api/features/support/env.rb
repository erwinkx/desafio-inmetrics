require 'selenium-webdriver'
require 'rspec'
require 'httparty'
require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'report_builder'
require 'site_prism'
require 'capybara/poltergeist'
require 'rspec/retry'
require 'faker'
require 'documentos_br'

def load_yaml_file(path)
  YAML.load_file(File.dirname(__FILE__) + path)
end

CONFIG = load_yaml_file("/config/config.yaml")

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end
