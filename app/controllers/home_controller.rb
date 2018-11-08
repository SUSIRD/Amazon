class HomeController < ApplicationController
  def index
    @hola = "Hola Mundo"
  end

  def hello
    @name = params[:name]
  end

  def about
  end

  def contact_us
  end

  def prices
  end
end
