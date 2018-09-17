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

    @library = Library.new(@books)

  end

  def test_return_books
    assert_equal(@books, @library.books)
  end

  def test_return_all_info__book_found
    found_book = @library.return_all_info("harry_potter")
    assert_equal(found_book, @books[1])
  end

  def test_return_all_info__book_not_found
    found_book = @library.return_all_info("new_moon")
    assert_nil(found_book)
  end

  def test_return_rental_details__found
    details = @library.return_rental_details("harry_potter")
    assert_equal(details, @books[1][:rental_details])
  end

  def test_return_rental_details__not_found
    details = @library.return_rental_details("new_moon")
    assert_nil(details)
  end

  def test_checkout_new_book
    @library.checkout_book("the_twits")
    assert_equal("the_twits", @library.books[3][:title])
  end

  def test_add_rental_details
    @library.checkout_book("the_twits")
    @library.add_rental_details("the_twits", "Jane", "02/08/17")
    assert_equal("Jane", @library.books[3][:rental_details][:student_name])
    assert_equal("02/08/17", @library.books[3][:rental_details][:date])
  end
end
