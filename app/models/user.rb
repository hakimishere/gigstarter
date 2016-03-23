class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many(:bids)
	has_and_belongs_to_many(:artists)

 def age
		 now = Time.now.utc.to_date
		 birthday = date_of_birth
		 return now.year - birthday.year - (birthday.to_date.change(:year => now.year) > now ? 1 : 0)
 end

	
end
