class SubscriptorsController < ApplicationController

  layout "signin"

  def new
    @subscriptor = Subscriptor.new
  end

  def create
    @subscriptor = Subscriptor.new(subscriptor_params)

    if @subscriptor.save
      redirect_to posts_path, notice: "Se suscribio exitosamente"
    else
      flash[:alert] = "Hubo un error, favor suscribirse de nuevo"
      render :new
    end
  end

  private
    def subscriptor_params
      params.require(:subscriptor).permit(:name, :email)
    end
end
