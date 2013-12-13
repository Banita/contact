class Company < ActiveRecord::Base
   attr_accessible :name, :email,:office_no,:user_id,:photo
   belongs_to :user
end
