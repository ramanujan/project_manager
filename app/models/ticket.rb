class Ticket < ActiveRecord::Base
  attr_accessible :description, :title
  belongs_to :project
  validates :description, presence:true, length:{minimum:10}
  validates :title, presence:true;
end
