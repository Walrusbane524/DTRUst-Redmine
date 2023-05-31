# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'tds', to: 'tds#index'
get 'td_info', to: 'tds#td_info', as: 'info'
get 'td_form', to: 'tds#td_form', as: 'form'
get '/edit_td', to: 'tds#edit', as: 'edit_td'
post '/save_edit', to: 'tds#save_edit', as: 'save_edit'
post '/create_td', to: 'tds#create', as: 'create_td'
post '/projects/:project_id/issues/:issue_id/tds', to: 'tds#create', as: 'issue_tds'
delete '/projects/:project_id/tds/:id', to: 'tds#destroy', as: 'td'
 
