class Organization < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :city,:id
  has_many :users
end
