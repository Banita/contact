class Person < ActiveRecord::Base
   attr_accessible :first_name, :last_name,:email, :mobile, :office_phone,:user_id,:photo,:remote_photo_url
   mount_uploader :photo, ImageUploader
   #belongs_to :user

 #   after_create :set_user

 #   def set_user
 #    if self.user_id.nil?
 #      self.user_id=user.id
 #   end
 # end
#  def name
#   [first_name, last_name].join(' ')
# end
end
