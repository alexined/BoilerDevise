BoilerDevise::Config = OpenStruct.new

BoilerDevise::Config.host = ENV['DEFAULT_HOST'] || begin
  Socket.gethostbyname(Socket.gethostname).first
rescue SocketError
  'winsxsw.com'
end

if Rails.env.production? || Rails.env.staging?
  ActionMailer::Base.smtp_settings.merge!(
    user_name: BoilerDevise::Config.sendgrid_username,
    password: BoilerDevise::Config.sendgrid_password
  )
end

unless Rails.env.test?
  ActionMailer::Base.default_url_options = { host: BoilerDevise::Config.host }
  ActionMailer::Base.asset_host = BoilerDevise::Config.host
end
