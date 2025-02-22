class OrganizationsController < ActionController::Base
  def index
    @organizations = Organization.all
  end

  def create
  end

  def show
    @organization = Organization.find(params[:id])
  end
end
