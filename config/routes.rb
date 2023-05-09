# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'tds', to: 'tds#index'
get 'td_info', to: 'tds#td_info', as: 'info'
post '/create_td', to: 'tds#create', as: 'create_td'
post 'post/:id/switch', to: 'tds#switch'
post '/projects/:project_id/issues/:issue_id/tds', to: 'tds#create', as: 'issue_tds'
delete '/projects/:project_id/tds/:id', to: 'tds#destroy', as: 'td'
 
