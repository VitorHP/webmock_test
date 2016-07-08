class HomesController < ApplicationController
  def index

  end

  def destroy
    flash[:notice] = "Destroyed"

    redirect_to homes_path
  end
end
