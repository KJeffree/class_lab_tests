class Library

attr_accessor :books

  def initialize(books)
    @books = books
  end


  def return_all_info(requested_book)
    for book in @books
      if book[:title] == requested_book
        return book
      end 
    end
  end




end
