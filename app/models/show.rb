class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters
   

  def actors_list
    c = Character.where("show_id = #{self.id}")
    c.map do |ch|
        aid = ch.actor_id
        a = Actor.find_by(id: aid).full_name
      end
    end

    # def build_network(call_letters)
    #     self.network = Network.new(call_letters)
    #     binding.pry
    #     self.save
    # end

end