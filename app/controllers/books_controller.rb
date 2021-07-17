class BooksController < ApplicationController

  def index
    @user=current_user
    @books=Book.all
  end

  def show
    @user=User.find(params[:id])
    @books=@user.books
    @book=Book.new
  end

  def new
    @book=Book.new
  end

  def create
    book=Book.new(book_params)
    book.save
    redirect_to book_path(:id)
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title,:body)
  end


end
