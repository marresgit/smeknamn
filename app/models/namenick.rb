class Namenick < ApplicationRecord
  validates :nickname, presence: true,
  				   length: { :within => 2..20,
  							 :too_short => 'too short',
  							 :too_long => 'too long'}		   
  
  validates :namenick, presence: true,
  				   length: { :within => 2..20,
  							 :too_short => 'too short',
  							 :too_long => 'too long'}		   
  
  def self.search(search)
    where("nickname LIKE ? ", "%#{search}")
  end

 

end
