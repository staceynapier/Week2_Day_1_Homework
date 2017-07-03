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