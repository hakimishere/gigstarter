class Artist < ActiveRecord::Base
	has_many(:bids)
	has_many(:events)
	has_and_belongs_to_many(:users)
	has_and_belongs_to_many(:genres)
end
