class Nickname < ApplicationRecord
  validates :name, presence: true,
  				   length: { minimum: 5, maximum: 20}

end
