class UserGame < ActiveRecord::Base


    validates_uniqueness_of :system_game_id, :message => 'already have that game'
    belongs_to :user
    belongs_to :system_game
    
    HUMANIZED_ATTRIBUTES = {
    :system_game_id => "You "
  }

  def self.human_attribute_name(attr, options={})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end


    
end
