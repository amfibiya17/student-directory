
# we put all students into an array
# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :april},
#   {name: "Darth Vader", cohort: :april},
#   {name: "Nurse Ratched", cohort: :april},
#   {name: "Michael Corleone", cohort: :april},
#   {name: "Alex DeLarge", cohort: :april},
#   {name: "The Wicked Witch of the West", cohort: :april},
#   {name: "Terminator", cohort: :april},
#   {name: "Freddy Krueger", cohort: :april},
#   {name: "The Joker", cohort: :april},
#   {name: "Joffrey Baratheon", cohort: :april},
#   {name: "Norman Bates", cohort: :april}
# ]

def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return twice"

  # creating an empty array
  students = []

  # the first name
  name = gets.chomp
  
  # while the name is not empty, repeat this code (loop)
  while !name.empty? do
    # adding the student hash to the array
    students << {name: name, cohort: :april}
    puts "Now we have #{students.count} students"
    # another name from the user
    name = gets.chomp
  end

  # returning the array of students
  students

end

def print_header
  puts "The students of Villains Academy"
  puts "-------------------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    selection = gets.chomp
    
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
    end

  end
end

interactive_menu