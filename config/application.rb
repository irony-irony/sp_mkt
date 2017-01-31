require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SpMkt
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.default_locale = :ja
    I18n.available_locales = [:en, :ja]
    I18n.enforce_available_locales = true
    config.time_zone = 'Tokyo'
    config.active_record.time_zone_aware_types = [:datetime, :time]

    config.generators do |g|
      g.test_framework :false;
      g.helper :false
      g.assets :false
      g.javascripst :false
    end
  end
end
