Redmine::Plugin.register :achievements do
  name 'achievements'
  author 'leo'
  description 'This is a plugin for Redmine'
  version '0.0.1'

  menu :application_menu,
       :achievements,
       {
           controller: :achievements,
           action: :index
       },
       caption: 'Достижения'

  menu :application_menu,
       :totals,
       {
           controller: :totals,
           action: :index
       },
       caption: 'Результаты'
end

Rails.application.config.to_prepare do
  #JournalsHelper.include Achievements::Infectors::JournalsHelper
  User.include Achievements::Infectors::User
end