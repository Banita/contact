class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
    t.string :first_name,:limit => 32, :null => false
    t.string :last_name, :limit => 32, :null => false
    t.string :email
     t.string :mobile
     t.string :office_phone
     t.timestamps
    end
  end
end
