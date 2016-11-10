class Post < ApplicationRecord
  validates :message, presence: true,
  				   length: { :within => 2..50,
  							 :too_short => 'too short',
  							 :too_long => 'too long'}		   
  

end
