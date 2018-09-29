class Servicetype < ApplicationRecord
	has_many :services, :dependent => :destroy
end
