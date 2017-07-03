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
    assert_equal(["Chris", "Stacey", "Tracy"], new_team.players())

  end

  def test_check_player_name()
    new_team = Team.new("Cohort 14", ["Chris", "Stacey"], "Keith")
    assert_equal(true, new_team.check_player_name?("Stacey"))
    assert_equal(false, new_team.check_player_name?("Daniel"))

  end

  def test_match_outcome()
    new_team = Team.new("Cohort 14", ["Chris", "Stacey"], "Keith")
    new_team.outcome("won")
    assert_equal(1, new_team.points())
    new_team.outcome("loss")
    assert_equal(1, new_team.points())

  end

end

class TestLibrary < MiniTest::Test

  def setup
    @new_library = Library.new([
    {
      title: "the_hobbit", 
      rental_details: {
        student_name: "Chris",
        date: "05/04/17"
      },
    },
    {
      title: "forgotten_world", 
      rental_details: {
        student_name: "John", 
        date: "06/07/94"
      }
    }])

  end

  def test_get_all_or_find_book__if_all()
    assert_equal("the_hobbit loaned to Chris on 05/04/17.forgotten_world loaned to John on 06/07/94.", @new_library.get_all_or_find_book())
  end 

  def test_get_all_or_find_book__if_find()
    assert_equal("the_hobbit loaned to Chris on 05/04/17.", @new_library.get_all_or_find_book('the_hobbit'))
  end

  def test_add_new_book()
    @new_library.add_new_book("mockingbird")
    assert_equal("the_hobbit loaned to Chris on 05/04/17.forgotten_world loaned to John on 06/07/94.mockingbird loaned to  on .", @new_library.get_all_or_find_book())
  end
end