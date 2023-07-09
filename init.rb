Redmine::Plugin.register :tds do
  name 'Technical Debt Plugin'
  author 'Guilherme de Menezes Furtado'
  description 'Plugin de gerenciamento de Dívidas Técnicas para o Redmine'
  version '1.0.0'
  url 'https://github.com/Walrusbane524/Redmine-Technical-Debt-Plugin'
  author_url 'https://github.com/Walrusbane524'
  menu :project_menu, :tds, { controller: 'tds', action: 'index' }, caption: 'TechDebt', after: :activity, param: :project_id
  
  project_module :tds do
    permission :view_tds, tds: :index
    permission :delete_tds, tds: :destroy
    permission :edit_tds, tds: :edit
    permission :create_tds, tds: :td_form
  end
end
