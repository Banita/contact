class AddPhotoToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :photo, :string
  end
end
