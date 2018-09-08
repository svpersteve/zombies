class PagesController < ApplicationController
  def home
    @zombies = Zombie.in_name_order
  end
end
