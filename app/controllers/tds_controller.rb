class TdsController < ApplicationController

  def index
    @project = Project.find(params[:project_id])
    @tds = Td.includes(:issue).all
  end

  def td_info
    @project = Project.find(params[:project_id])
    @td = Td.includes(:issue).find(params[:id])
    
    render :template => 'tds/td_info'
  end

  def td_form
    @project = Project.find(params[:project_id])
    @issues = @project.issues

    render :template => 'tds/td_form'
  end

  def edit
    @project = Project.find(params[:project_id])    
    @td = Td.find(params[:id])
    @reload_to = params[:reload_to]
    
    render :template => 'tds/edit_td'
  end

  def save_edit
    td = Td.find(params[:id])
    td.set_type(params[:td_type])

    if params[:reload_to] == "tds"
        redirect_to tds_path(project_id: params[:project_id])
    else
        redirect_to info_path(project_id: params[:project_id], id: params[:id])
    end

    if td.save
      flash[:notice] = 'Edição salva com sucesso.'
    else
      flash[:error] = "Erro ao salvar edição."
    end
  end

  def create
    td = Td.new
    td.td_type = params[:td_type]
    td.issue_id = params[:issue_id]

    redirect_to tds_path(project_id: params[:project_id])
    if td.save
      flash[:notice] = 'TD created successfully.'
    else
      flash.now[:error] = 'TD creation failed.'
    end
  end

  def destroy
    @td = Td.find(params[:id])
    @td.destroy
    
    redirect_to tds_path(project_id: params[:project_id])
  end

end
