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

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end



end