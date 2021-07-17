class BooksController < ApplicationController

  def index
    @user=User.find(params[:id])
    @books=Book.all
  end

  def show
  end



  def create
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
  end

  def destroy
  end


end
