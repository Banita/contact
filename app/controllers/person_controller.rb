class PersonController < ApplicationController
#layout 'application_bootstrap'
#include Devise::Controllers::Helpers
before_filter :authenticate_user!
def contacts
 # @person=current_user.person.map {|p| name=p.first_name + " " + p.last_name,p.email,p.office_phone}
  @person=current_user.person.map {|p| [p.first_name + " " + p.last_name,p.email,p.mobile,p.office_phone,p.photo]}
  @company=current_user.companies.map {|c|r= c.name,c.email," ",c.office_no,c.photo}
  @contacts=(@person+@company).map!{|con| {:name=>con[0],:email=>con[1],:mobile=>con[2],:office_no=>con[3],:image=>con[4]}}.sort{|u,v| u[:name] <=>v[:name]}

end

def index
  @person=current_user.person
    #@person=Person.all
end

def new
 @person=Person.new
end

def create
    p params.inspect
   #@person=Person.new(:first_name=>params[:first_name],:last_name=>params[:last_name])
   @person=Person.new(params[:person].merge(:user_id=>current_user))
   if @person.save
    redirect_to :action=>'show' ,:id=>@person.id
  else
     render :action=>'new'
  end
end

def show
@person=Person.find(params[:id])

end

def edit
  @person=Person.find(params[:id])
end

def update
  @person=Person.find(params[:id])
if @person.update_attributes(params['person'])
    redirect_to :action=>'index'
  else
     redirect_to :action=>'edit'
  end
end

def delete
  @person=Person.find(params[:id])
 if  @person.delete
  redirect_to :action=>'index'
else
  redirect_to :action=>'new'
end
end

end

