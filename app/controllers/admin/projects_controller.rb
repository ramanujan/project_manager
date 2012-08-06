class Admin::ProjectsController < ApplicationController
  
  before_filter :find_project, only:[:show,:edit,:update]

  def new

	  @title = t("admin.projects.new.title")
	  @project = Project.new 
    
  end
  
  
  def create

    @project = Project.new( params[:project] )
    
    if  @project.save 
      flash[:block] = t("admin.projects.create.success",title:@project.title)
      redirect_to [:admin,@project] 
    else
      @title = t("admin.projects.create.title_failure",title:@project.title)
      render :new  # Not use flash message. Error messages is self-explanatory
    end
  
  end
  

  def show
  
    @title=t("admin.projects.show.details",title:@project.title)
     
  end


  def index 
  
    @projects = Project.all  
    @title = t("admin.projects.index.available_projects") 
    
  end
  

  def edit
  
    @title = t("admin.projects.edit.title",title:@project.title)
     
  end


  def update
    begin
      old_title = @project.title
      if @project.update_attributes(params[:project])
        flash[:block] = t("admin.projects.update.success",title:old_title)
        redirect_to [:admin,@project]
      else
        @title=t("admin.projects.update.error_title",title:old_title)
        render :edit
      end  
    
    rescue => msg
      @title=t("admin.projects.update.error_title",title:old_title)
      flash[:error]=t("admin.projects.update.error",msg:msg)
      redirect_to  [:admin,@project]
    end 

  end

  

  private
    
    def find_project
    
      begin
        @project = Project.find( params[:id] )
      rescue
        @title= t("projects.unavailable") 
        flash['error'] = t("projects.unavailable")  
        redirect_to admin_projects_path
      end
    
    end
  


end
