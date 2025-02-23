class ProfilesController < ApplicationController
  def index
    @user = current_user
    @related_users =
      Array(
        current_user
          &.organizations
          &.includes(:users)
          &.map(&:users)
          &.flatten
          &.uniq
      )
  end

  def show
    @user = User.find(params[:id])

    @intersecting_orgs = @user.organizations & current_user.organizations
    @are_intersecting_orgs = @intersecting_orgs.any?
  end

  def new
    @organization = Organization.new
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
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
    redirect_to organization_url,
                notice: "Organization was successfully destroyed."
  end

  private

  def organization_params
    params.require(:organization).permit(:name)
  end
end
