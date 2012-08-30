# == Schema Information
#
# Table name: projects
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  description :string(255)
#

class Project < ActiveRecord::Base
  attr_accessible :title, :description
  has_many :tickets, :dependent=>:delete_all
  validates :title, presence:true, uniqueness:true
  validates :description, presence:true;


end
