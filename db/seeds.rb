# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

person=Person.create(:first_name=>"Banita",:last_name=>"Patro",:email=>"contact@example.com",:mobile=>"8090123456",:office_phone=>'080-2245656')
# organigation1 = Organization.create(:name => 'Example, Inc', :city=>"bangalore" )
# organigation2 = Organization.create(:name => 'oranization', :city=>"bangalore" )

company1 = Company.create(:name => 'IBM, Inc', :email=>"ibm@gmail.com",:office_no=>"1234556778" )
company2 = Company.create(:name => 'HCL', :email=>"hcl@gmail.com" ,:office_no=>"7777788888")
up=company1.update_attributes!(:user_id=>3)

