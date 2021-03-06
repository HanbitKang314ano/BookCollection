class BooksController < ApplicationController
  before_action :set_book, only: %i[ show edit update destroy ]

  # GET /books or /books.json
  def index
    @books = Book.all
  end

  # GET /books/1 or /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

<<<<<<< HEAD
  def delete 
    @book = Book.find(params[:id])
  end

=======
>>>>>>> run_test
  # POST /books or /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
<<<<<<< HEAD
        format.html { redirect_to books_url, notice: "Book was successfully created." }
        format.json { render :show, status: :created, location: @book }
=======
        format.html { redirect_to books_path, notice: "Book was successfully created." }
>>>>>>> run_test
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1 or /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
<<<<<<< HEAD
        format.html { redirect_to books_url, notice: "Book was successfully updated." }
        format.json { render :show, status: :ok, location: @book }
=======
        format.html { redirect_to books_path, notice: "Book was successfully updated." }
>>>>>>> run_test
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

<<<<<<< HEAD
  # DELETE /books/1 or /books/1.json
  def destroy
    @book.destroy

    respond_to do |format|
      format.html { redirect_to books_url, notice: "Book was successfully destroyed." }
      format.json { head :no_content }
    end
=======
  def delete
    @book=Book.find(params[:id])
  end

  def destroy
    @book=Book.find(params[:id])
    @book.destroy
    flash[:notice]="Book '#{@book.title}' deleted successfully."
    redirect_to(books_path)
>>>>>>> run_test
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
      params.require(:book).permit(:title, :author, :price, :published_date)
    end
end
