class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        actors_list = self.actors
        actors_list.collect do |actor|
            actor.full_name
        end
    end
end