class Nickname < ApplicationRecord
  validates :name, presence: true,
  				   length: { :within => 2..20,
  							 :too_short => 'too short',
  							 :too_long => 'too long'}		   
  
  validates :nick, presence: true,
  				   length: { :within => 2..20,
  							 :too_short => 'too short',
  							 :too_long => 'too long'}		   
  
end
