class BooksController < ApplicationController
  def new
    @page_title = 'Add a Book'
    @book = Book.new
    @category = Category.new
    @author = Author.new
    @publisher = Publisher.new
  end

  def create
    @book = Book.new(book_params)
    @book.save

    redirect_to books_path
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end

  private
  def book_params
    params.require(:book).permit(:title, :category_id, :author_id, :publisher_id, :isbn, :excerpt, :pages, :price, :buy, :format, :year)
  end

end
