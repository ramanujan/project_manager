require 'spec_helper'

describe Admin::ProjectsController do
  
  let(:new_project) do
  
    FactoryGirl.build(:project)
  
  end

  context "for missing projects" do
    
   
    
    it "should displays an error message" do
    
      get :show, id:"not-here"
      response.should redirect_to(admin_projects_path)
      flash[:error].should eql("The project you are looking for could not be found")
      
      get :update, id:"not-here", project:new_project
      response.should redirect_to(admin_projects_path)
      flash[:error].should eql("The project you are looking for could not be found")
      

      
    end   
  
  end

end
