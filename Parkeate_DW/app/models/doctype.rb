class Doctype < ApplicationRecord
	has_many :users ,:dependent => :destroy
end
