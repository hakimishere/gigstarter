class Event < ActiveRecord::Base
	belongs_to(:artist)
	belongs_to(:location)
end
