And /^there is a project with title "(.*?)"$/ do |title|
  @project = FactoryGirl.create(:project,title:title) 
end