require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)
require 'cartify'

module Dummy
  class Application < Rails::Application
    config.load_defaults 5.1

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.stylesheets false
      g.javascripts false
    end
  end
end
