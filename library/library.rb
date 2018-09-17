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
    return nil
  end

  def return_rental_details(requested_book)
    for book in @books
      if book[:title] == requested_book
        return book[:rental_details]
      end
    end
    return nil
  end

  def checkout_book(book_to_checkout)
    @books << {
      title: book_to_checkout,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
  end

  def add_rental_details(book_name, student_name, return_date)
    for book in @books
      if book[:title] == book_name
        book[:rental_details][:student_name] = student_name
        book[:rental_details][:date] = return_date
      end
    end
  end

end
