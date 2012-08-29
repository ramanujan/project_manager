class TicketsController < ApplicationController
  
  before_filter :find_project
  before_filter :find_ticket, only:[:show]

  def new
    @title = t("tickets.new.title")
    @ticket = @project.tickets.build
  end

  def create
   
   @ticket = @project.tickets.build( params[:ticket] )
    
    if  @ticket.save 
      flash[:block] = t("tickets.create.success",title:@ticket.title)
      redirect_to [@project,@ticket] 
    else
      @title = t("tickets.create.title_failure",title:@ticket.title)
      render :new  # Not use flash message. Error messages is self-explanatory
    end


  end

  def show
    @title = t("tickets.show.title", title:@ticket.title)
  end




  private 
    
    def find_project
    
      begin
        @project = Project.find( params[:project_id] )
      rescue
        @title= t("admin.projects.unavailable") 
        flash[:error] = t("admin.projects.unavailable")  
        redirect_to admin_projects_path
      end
    
    end

    def find_ticket

      begin
        @ticket = @project.tickets.find( params[:id] )
      rescue
        @title= t("tickets.unavailable") 
        flash[:error] = t("tickets.unavailable")  
        redirect_to admin_project_path(@project)    
      end   


 
    end

 
end
