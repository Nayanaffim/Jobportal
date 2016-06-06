class Vacancy < ActiveRecord::Base
  belongs_to :company
  has_many :user ,through:  :applieduser



  def self.search(search)
 # where("name LIKE ?", "%#{search}%") 
  #where("content LIKE ?", "%#{search}%")

  where("city LIKE ?","%#{search}%")
  where("technology ILIKE ?","%#{search}%")
 # where("experience LIKE ?","%#{search}%")
  end
end


 
