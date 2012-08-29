And /^there is a project with title "(.*?)"$/ do |title|
  @project = FactoryGirl.create(:project,title:title) 
end
 # table is a Cucumber::Ast::Table. The hashes() method provided by cucumber, 
 # uses the first row of the table as keys, and the rest of the rows as many as you need
 # for the values of hashes stored in an array. In other words, hashes returns an array of hashes 
 # like this: [ {"title"=>"Make it shiny!", "description"=>"Gradients! Starburts! Oh My!"} ]

Given /^that project has a ticket:$/ do |table|
  
  table.hashes.each do |attributes| 
    @project.tickets.create!(attributes)
  end 
  

end