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

  def switch
    td = Td.find(params[:id])
    td.switch()
    if td.save
      flash[:notice] = 'Switch bem-sucedido.'
    else
      flash[:error] = "Switch mal-sucedido."
    end
    redirect_to tds_path(project_id: params[:project_id])
  end

  def create
    td = Td.new
    td.td_type = params[:td_type]
    td.issue_id = params[:issue_id]

    if td.save
      flash[:notice] = 'TD created successfully.'
      redirect_to tds_path(project_id: params[:project_id])
    else
      flash.now[:error] = 'TD creation failed.'
      render :new
    end
  end

  def destroy
    @td = Td.find(params[:id])
    @td.destroy

    redirect_to tds_path(project_id: params[:project_id])
  end

end
