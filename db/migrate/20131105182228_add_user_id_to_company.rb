class AddUserIdToCompany < ActiveRecord::Migration
  def up
    add_column :companies, :user_id, :string
  end
  def down
    remove_column :companies, :user_id
  end
end
