class ZombiesController < ApplicationController
  before_action :find_zombie, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if @zombie.update_attributes(zombie_params)
      redirect_to zombie_path(@zombie)
    else
      render :edit
    end
  end

  private

  def find_zombie
    @zombie = Zombie.find(params[:id])
  end

  def zombie_params
    params.require(:zombie).permit(:name, :bio)
  end
end
