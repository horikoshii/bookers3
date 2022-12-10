class BooksController < ApplicationController

  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end
  
  def create
  end
  
  def show
  end
  
  
end
