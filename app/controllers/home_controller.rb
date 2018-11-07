class HomeController < ApplicationController
  def index
    @hola = "Hola Mundo"
  end

  def hello
    @name = params[:name]
  end
end
