class Student

  def initialize(name,cohort)
    @name = name
    @cohort = cohort
  end

  def student_name
    return @name
  end

  def cohort_number
    return @cohort
  end

  def change_name(name)
    @name = name
  end

  def change_cohort(cohort)
    @cohort = cohort
  end

  def student_talking
    return "I can talk!"
  end

  def fav_language(language)
    return "I love #{language}"
  end 
end 


class Team 

  attr_accessor :coach
  attr_reader :team_name, :players

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  def add_new_player(name)
    players << name
    p players
  end

  def is_player_in_team(name)
    return false if name != players
  end

  def points_total
    points = 0
  end

  def add_to_points_total(amount)
    points = 0
    points += amount
      return points
  end


end