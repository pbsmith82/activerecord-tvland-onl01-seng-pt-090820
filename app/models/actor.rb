class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

 def full_name
    "#{self.first_name} #{self.last_name}"    
 end

 def list_roles
     m = Character.find_by(actor_id: self.id)
     "#{m.name} - #{Show.find_by(id: m.show_id).name}"
     #binding.pry
 end

end