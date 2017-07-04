require("minitest/autorun")
require_relative("further_class.rb")

class TestFurther < MiniTest::Test

  def test_student
    new_student = Student.new("George", 10)
    assert_equal("George", new_student.get_name)
  end

  def test_set_student_details
    new_student = Student.new("George", 10)
    new_student.set_student_name("Stacey")
    new_student.set_student_cohort(14)
    assert_equal("Stacey", new_student.get_name)
    assert_equal(14, new_student.get_cohort)
  end

  def test_student_talks
    new_student = Student.new("George", 10)
    # new_student.student_talks
    assert_equal("Hello there!", new_student.student_talks)
  end

  def test_student_favourite_language
    new_student = Student.new("George", 15)
    # new_student.favourite_language("Ruby")
    assert_equal("I love Ruby", new_student.favourite_language("Ruby"))
  end   



  def test_new_team_name
    new_team = Team.new("Bedenes Basketball", ["George", "Stacey", "Simon"], "Sue Barker", 0)
    assert_equal("Bedenes Basketball", new_team.name)
  end

  def test_update_coach
    new_team = Team.new("Bedenes Basketball", ["George", "Stacey", "Simon"], "Sue Barker", 0)
    assert_equal("Andy Murray", new_team.update_coach("Andy Murray"))
  end

  def test_new_player
    new_team = Team.new("Bedenes Basketball", ["George", "Stacey", "Simon"], "Sue Barker", 0)
    assert_equal(["George", "Stacey", "Simon", "Andy"], new_team.add_player("Andy"))
  end

  def test_player_included
    new_team = Team.new("Bedenes Basketball", ["George", "Stacey", "Simon"], "Sue Barker", 0)
    assert_equal(false, new_team.player_included("Joe"))
  end

  def test_amount_of_points
    new_team = Team.new("Bedenes Basketball", ["George", "Stacey", "Simon"], "Sue Barker", 0)
    assert_equal(0, new_team.amount_of_points)
  end

  def test_update_points
    new_team = Team.new("Bedenes Basketball", ["George", "Stacey", "Simon"], "Sue Barker", 0)
    new_team.update_points("win")
    assert_equal(2, new_team.amount_of_points)
  end






end