class BlogController < ApplicationController
  #layout y render
  #redirect

  def index
  end

  def new
    #get
  end

  def create
    #post

    #transaccion en la base datos

    if condition
      # si se cumple
      redirect_to blog_index_path
    else
      #si falla
      render :new
    end
  end

  def edit
    #get
  end

  def update
    #post / put / patch

    if condition
      # si se cumple
      redirect_to home_about_path
    else
      #si falla
      render :edit
    end
  end

  def delete
    #post /delete / destroy
  end

  def show
  end
end
