class SubscriptorsController < ApplicationController

  layout "signin"

  def index

  end

  def new
    @subscriptor = Subscriptor.new
  end

  def create
    @subscriptor = Subscriptor.new(subscriptor_params)

    if @subscriptor.save

      # send subscriptor mail
      UserNotifierMailer.send_subscribe_email(@subscriptor).deliver_now

      redirect_to posts_path, notice: "Se suscribio exitosamente"
    else
      flash[:alert] = "Hubo un error, favor suscribirse de nuevo"
      render :new
    end
  end

  def show
    
  end

  def edit
    
  end

  def update
    @subscriptor = Subscriptor.find(params[:id])
    redirect_to subscriptor_path(@subscriptor)
  end

  def destroy
    @subscriptor = Subscriptor.find(params[:id])
    @subscriptor.destroy

    redirect_to subscriptors_path
  end

  private
    def subscriptor_params
      params.require(:subscriptor).permit(:name, :email)
    end
end
