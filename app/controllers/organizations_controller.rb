class OrganizationsController < ApplicationController
  def index
    @organizations = current_user.organizations
  end

  def show
    @organization = Organization.find(params[:id])
  end

  def new
    @organization = Organization.new
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def create
    @organization = Organization.new(organization_params)
    @organization.users << @current_user
    @current_user.organizations << @organization

    if @organization.save && @current_user.save
      redirect_to @organization,
        notice: "Organization was successfully created."
    else
      render :new
    end
  end

  def update
    @organization = Organization.find(params[:id])
    if @organization.update(organization_params)
      redirect_to @organization,
        notice: "Organization was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy
    redirect_to organizations_url,
      notice: "Organization was successfully destroyed."
  end

  def remove_user
    organization = Organization.find(params[:oid])
    user = User.find(params[:uid])

    organization.users.delete(user)
    user.organizations.delete(organization)

    redirect_to organizations_url, notice: "User was successfully removed."
  end

  private

  def organization_params
    params.require(:organization).permit(:name, :oid, :uid)
  end
  
end
