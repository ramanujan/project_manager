module ApplicationHelper
  BASE_TITLE = I18n.t("main_title")   
  
  def title
    @title ? BASE_TITLE+"--"+@title : BASE_TITLE
  end

end
