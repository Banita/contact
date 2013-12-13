class AddColumnsToCompany < ActiveRecord::Migration
  def up
    add_column :companies ,:name,:string
    add_column :companies ,:email,:string
    add_column :companies ,:office_no,:string
 end
  
  def down
    remove_column :companies, :name
    remove_column :companies, :email
    remove_column :companies, :office_no
  end
end
