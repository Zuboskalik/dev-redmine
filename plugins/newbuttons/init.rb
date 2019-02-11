require 'redmine'

require_dependency 'newbuttons_button_hook'

Redmine::Plugin.register :newbuttons do
  name 'Newbuttons plugin'
  author 'Ivan Shorikov'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  menu :application_menu, :newbuttons, { :controller => 'newbuttons', :action => 'index' }, :caption => 'New Button'
  permission :view_newbuttons,      :newbuttons => :index
  permission :update_newbuttons,    :newbuttons => :update
  permission :index_newbuttons,     :newbuttons => :index
  permission :toggle_newbuttons,    :newbuttons => :toggle
  permission :rename_newbuttons,    :newbuttons => :rename
  permission :setaction_newbuttons, :newbuttons => :setaction
end
