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
  	if search
  	  find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  	else
  	  find(:all)
  	end
  end

end
