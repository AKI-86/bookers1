class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      redirect_to book_path(book.id)
      flash[:notice] = "Book was successfully updated."
    else
      render :new
    end
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id)
      flash[:notice] = "Book was successfully created."
    else
      render :new
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end

private
  def book_params
    params.permit(:title, :body)
    #  params.require(:list).permit(:title, :body)からrequireを消去
  end
end