require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SthlmOut
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # Action Mailer settings:
    config.action_mailer.smtp_settings = {
      address: "smtp.gmail.com",
      port: 587,
      domain: "example.tld",
      user_name: "luffe41@gmail.com",
      password: "jessijames@13",
      autentication: "plain",
      enable_starttls_auto: true
    }

    config.action_mailer.default_url_option = {
      host: "BEAST.org"
    }

  end
end
