class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @books = Book.select(:title, :body).limit(9).order(created_at: :desc)
    # 一覧表示はIDの若い順に表示するとあるが、
  end

  def show
  end

  def edit
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/show'
  end


private
  def book_params
    params.permit(:title, :body)
    #  params.require(:list).permit(:title, :body)からrequireを消去
  end
end
