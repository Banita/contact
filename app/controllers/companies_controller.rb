class CompaniesController < ApplicationController

def new
end

def create
  @company=Company.create(params[:company])
  respond_to do |format|
  if @company.save
  format.html {redirect_to  company_path(@company)}
else
  render "new"
end
end
end

def show
  @company=Company.find(params[:id])
end

def index
  @companies=Company.all
end

def edit
  @company=Company.find(params[:id])
end

def update
 @company=Company.find(params[:id])
if @company.update_attributes(params[:company])
    redirect_to :action=>'index'
  else
     redirect_to :action=>'edit'
  end
end


end
