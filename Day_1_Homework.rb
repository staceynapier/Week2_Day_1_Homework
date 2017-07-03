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

  attr_accessor :coach, :points
  attr_reader :team_name, :players

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_new_player(player)
    @players.push(player)
  end

  def check_player_name?(name)
    @players.each{|person| return true if name == person}
    return false
  end

  def outcome(outcome)
    @points += 1 if outcome.downcase() == "won"
  end
end

class Library

  attr_accessor :books

  def initialize(books)
    @books = books

  end

#will return all books if no book to find is given
  def get_all_or_find_book(find_book = false)
    book_str = ''
    specific_book = @books
    #check if a specific book is given then save it to specific book
    specific_book = @books.select{|book| book if book[:title] == find_book} if find_book 

    #builds a string with book/books in hash
    specific_book.each do |book|
      book_str += book[:title] + " loaned to #{book[:rental_details][:student_name]} on #{book[:rental_details][:date]}." 
    end
    return book_str
  end

  def add_new_book(title)
    @books <<     {
      title: title, 
      rental_details: {
        student_name: "",
        date: ""
      }
    }
  end

end