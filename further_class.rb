class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_name
    return @name
  end

  def get_cohort
    return @cohort
  end

  def set_student_name(name)
    @name = name
  end

  def set_student_cohort(cohort)
    @cohort = cohort
  end

  def student_talks
    return "Hello there!"
  end

  def favourite_language(name)
    return "I love #{name}"
  end



end

class Team

attr_accessor :name, :players, :coach, :points

 def initialize(name, players, coach, points)
  @name = name
  @players = players
  @coach = coach
  @points = points
 end

  def update_coach(new_coach)
    @coach = new_coach
  end

  def add_player(name)
    @players << name
    return @players
  end

  def player_included(name)
    return false if "Joe" != @players
  end

  def amount_of_points
    return @points
  end

  def update_points(outcome)
    @points += 2 if (outcome) == "win"
    @points -= 2 if (outcome) == "lose"
    return @points
  end

end