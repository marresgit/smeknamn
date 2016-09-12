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
      domain: Rails.application.secrets.domain_name,
      user_name: Rails.application.secrets.email_username,
      password: Rails.application.secrets.email_password,
      autentication: "plain",
      enable_starttls_auto: true
    }

    # ActionMailer Config
      config.action_mailer.default_url_options = { :host => Rails.application.secrets.domain_name }
      config.action_mailer.delivery_method = :smtp
      config.action_mailer.perform_deliveries = true
      config.action_mailer.raise_delivery_errors = false

  end
end
