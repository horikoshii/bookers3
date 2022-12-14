class BooksController < ApplicationController

  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id), notice: "You have create book successfully."
  end

  def show
    @book = Book.new
    @books = Book.find(params[:id])
    @user = current_user
    @users = @books.user
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path, alert: '投稿を削除しました'
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
     redirect_to book_path(@book.id), notice: "You have updated book successfully."
    else
      render :edit
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
