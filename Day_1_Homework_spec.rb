require ("minitest/autorun")
require_relative ("Day_1_Homework.rb")

class TestStudent < MiniTest::Test

  def test_new_student
    new_student = Student.new("Chris", 14)
    assert_equal("Chris", new_student.student_name)
  end


  def test_setters()
    new_student = Student.new("Stacey", 14)
    new_student.change_name("Chris")
    new_student.change_cohort(13)
    assert_equal("Chris", new_student.student_name)
    assert_equal(13, new_student.cohort_number)
  end

  def test_student_talking
    new_student = Student.new("Tracy", 14)
    new_student2 = Student.new("Chris", 14)
    assert_equal("I can talk!", new_student.student_talking())

  end

  def test_favourite_language()
    new_student = Student.new("Chris", 12)
    assert_equal("I love Ruby", new_student.fav_language("Ruby"))

  end

  def test_team()
    new_team = Team.new("Cohort 14", ["Chris", "Stacey"], "Keith")
    assert_equal("Cohort 14", new_team.team_name())
  end

  def test_change_coach()
    new_team = Team.new("Cohort 14", ["Chris", "Stacey"], "Keith")
    new_team.coach = "Alex"
    assert_equal("Alex", new_team.coach)
  end

  def test_add_new_player()
    new_team = Team.new("Cohort 14", ["Chris", "Stacey"], "Keith")
    new_team.add_new_player("Tracy")
    assert_equal(["Chris", "Stacey"])

  end






end

