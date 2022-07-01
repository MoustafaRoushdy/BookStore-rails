class BooksController < ApplicationController
    def index 
        @books = Book.all 
    end

    def new 
        @book = Book.new 
    end 
    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        redirect_to root_path , status: :see_other
    end
    def show 
        @book = Book.find(params[:id])
    end

    def create 
        @book = Book.new(book_params)
        @book.save!
        if @book.save!
            redirect_to @book
        else 
            render :new , status: :unprocessable_entity
        end
    end

    private

        def book_params
            params.require(:book).permit(:name,:price,:description,:admin_id)
          
        end


end
