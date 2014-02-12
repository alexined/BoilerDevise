ActiveAdmin.setup do |config|
  config.site_title = "Buzz-Competition"
  config.site_title_link = "/"
  config.authentication_method = :authenticate_admin_user!
  config.current_user_method = :current_user
  config.logout_link_path = :destroy_user_session_path
  config.logout_link_method = :delete
  config.allow_comments = false
  config.batch_actions = true
  config.default_per_page = 20

  config.namespace :admin do |admin|
  #  admin.build_menu do |menu|
  #    menu.add :label => "Contacts", priority: 7
  #    menu.add :label => "Workers", url: '/admin/resque', priority: 8
  #    menu.add :label => "A/B Split", url: '/admin/split', priority: 9
  #  end
  end

end
