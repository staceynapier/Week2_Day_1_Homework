require ("minitest/autorun")
require_relative ("Day_1_Homework.rb")

class TestStudent < MiniTest::Test

  def test_new_student
    new_student = Student.new("Chris", 14)

  end



end