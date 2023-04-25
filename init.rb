Redmine::Plugin.register :tds do
  name 'Tds plugin'
  author 'Guilherme'
  description 'Plugin de gerenciamento de Dívidas Técnicas para o Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  menu :project_menu, :tds, { controller: 'tds', action: 'index' }, caption: 'TDs', after: :activity, param: :project_id
  
  project_module :tds do
    permission :view_tds, tds: :index
    permission :destroy_td, tds: :destroy
    permission :switch_td, tds: :switch
    permission :create_tds, tds: :create
  end
end
