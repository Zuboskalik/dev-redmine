# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'newbuttons', :to => 'newbuttons#index', :as => :newbuttons
post 'newbuttons/:id/update', :to => 'newbuttons#update'
post 'newbuttons/:id/toggle', :to => 'newbuttons#toggle'
post 'newbuttons/:id/rename', :to => 'newbuttons#rename'
post 'newbuttons/:id/setaction', :to => 'newbuttons#setaction'
