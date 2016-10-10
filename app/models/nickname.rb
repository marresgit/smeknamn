class Nickname < ApplicationRecord
  validates :name, presence: true,
  				   length: { :within => 2..20,
  							 :too_short => 'too short',
  							 :too_long => 'too long'}		   
  
  validates :nick, presence: true,
  				   length: { :within => 2..20,
  							 :too_short => 'too short',
  							 :too_long => 'too long'}		   
  
  def self.search(search)
    where("name LIKE ? ", "%#{search}")
  end

end
