class RolesController < ApplicationController
  def index
    @roles = Role.order({ created_at: :desc })
  end

  def show
    @role = Role.find(params[:id])
  end

  def new
    @role = Role.new
  end

  def edit
    @role = Role.find(params[:id])
  end

  def create
    role_params = params.require(:role).permit(:actor_id, :movie_id, :character)
    @role = Role.new(role_params)

    if @role.valid?
      @role.save
      redirect_to role_url(@role), notice: "Role created successfully"
    else
      redirect_to role_url(@role), alert: "Role failed to create successfully"
    end
  end

  def update
  end

  def destroy
  end
end
