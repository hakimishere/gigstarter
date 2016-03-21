class User < ActiveRecord::Base
	has_many(:bids)
	has_and_belongs_to_many(:artists)
end
