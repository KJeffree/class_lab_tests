require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup

    @books = [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "harry_potter",
        rental_details: {
          student_name: "Tracey",
          date: "03/09/17"
        }
      },
      {
        title: "Twilight",
        rental_details: {
          student_name: "Sean",
          date: "01/05/17"
        }
      }
    ]

  end

def test_return_books
  library = Library.new(@books)
  assert_equal(@books, library.books)
end

def test_return_all_info
  library = Library.new(@books)
  found_book = library.return_all_info("harry_potter")
  assert_equal(found_book, @books[1])
end


end
