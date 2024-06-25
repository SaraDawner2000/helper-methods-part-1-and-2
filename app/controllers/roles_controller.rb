class RolesController < ApplicationController
  def index
    @roles = Role.order({ created_at: :desc })
  end

  def show
    @role = Role.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
