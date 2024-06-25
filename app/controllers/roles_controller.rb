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
    @role = Role.new(role_params)

    if @role.valid?
      @role.save
      redirect_to role_url(@role), notice: "Role created successfully"
    else
      redirect_to role_url(@role), alert: "Role failed to create successfully"
    end
  end

  def update
    @role = Role.find(params[:id])

    if @role.update(role_params)
      redirect_to role_url(@role), notice: "Role updated successfully"
    else
      redirect_to role_url(@role), alert: "Role failed to update successfully"
    end
  end

  def destroy
    @role = Role.find(params[:id])

    @role.destroy

    redirect_to roles_url, notice: "Role deleted successfully"
  end

  private
    def role_params
      params.require(:role).permit(:actor_id, :movie_id, :character)
    end
end
