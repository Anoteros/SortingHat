class SortingHat

  def initialize
  @sorted = {
      slytherin: [],
      griffindor: [],
      hufflepuff: [],
      ravenclaw: []
  }

  end

  def sort(students, houses)

    score = {
        slytherin: 0,
        griffindor: 0,
        hufflepuff: 0,
        ravenclaw: 0
    }

    # For each student, loop through the students traits
    students.each do |student|
      houses.each do |house, attribute|
        intersection = student[:traits] & attribute
        # Record a matching between each house and student
        score[house] = intersection.count
      end

      # Return the house that had the most matches
      best_match = score.select{|x, i| i==score.values.max}

      # If one house is returned assign student to that house
      if best_match.count == 1
        @sorted[best_match.keys[0]] << student[:name]
      else
        # If two or more houses are returned, assign to Hufflepuff
        @sorted[:hufflepuff] << student[:name]
      end
    end
  @sorted
  end

  def house(student_name)
    @sorted.each do |house, students|
        if students.include?(student_name)
          return house.to_s
        end
    end
  end

  # For use with sorting User via CLI prompt
  def new_student
    puts "What is your name?"
    name = gets.chomp

    puts "Please enter three traits"
    traits = gets.chomp
    traits = traits.split

    student = [{name: name, traits: traits}]
    student
  end
end