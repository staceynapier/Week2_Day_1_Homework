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

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def get_team_name()
    return @team_name
  end


  def get_players()
    return @players
  end
  

  def get_coach()
    return @coach
  end
  
  def change_coach(name)
    @coach = name
  end


end