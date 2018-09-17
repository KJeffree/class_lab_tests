require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student')

class TestBankAccount < MiniTest::Test
  def test_name_of_student
    student = Student.new("John", "E25")
    assert_equal("John", student.name)
  end

  def test_cohort_name
    student = Student.new("John", "E25")
    assert_equal("E25", student.cohort)
  end

  def test_change_name
    student = Student.new("John", "E25")
    student.name = "Paul"
    assert_equal("Paul", student.name)
  end

  def test_change_cohort
    student = Student.new("John", "E25")
    student.cohort = "E26"
    assert_equal("E26", student.cohort)
  end

  def test_talk
    student = Student.new("John", "E25")
    assert_equal("I can talk", student.talk)
  end

  def test_fav_language
    student = Student.new("John", "E25")
    assert_equal("I Love Ruby!", student.say_fav_language("Ruby") )
  end

end
