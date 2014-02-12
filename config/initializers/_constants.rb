Buzzstarter::Config = OpenStruct.new

Buzzstarter::Config.host = ENV['DEFAULT_HOST'] || begin
  Socket.gethostbyname(Socket.gethostname).first
rescue SocketError
  'winsxsw.com'
end

if Rails.env.production? || Rails.env.staging?
  ActionMailer::Base.smtp_settings.merge!(
    user_name: Buzzstarter::Config.sendgrid_username,
    password: Buzzstarter::Config.sendgrid_password
  )
end

unless Rails.env.test?
  ActionMailer::Base.default_url_options = { host: Buzzstarter::Config.host }
  ActionMailer::Base.asset_host = Buzzstarter::Config.host
end
