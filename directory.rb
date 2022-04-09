
# we put all students into an array
students = [
  {name: "Dr. Hannibal Lecter", cohort: :april},
  {name: "Darth Vader", cohort: :april},
  {name: "Nurse Ratched", cohort: :april},
  {name: "Michael Corleone", cohort: :april},
  {name: "Alex DeLarge", cohort: :april},
  {name: "The Wicked Witch of the West", cohort: :april},
  {name: "Terminator", cohort: :april},
  {name: "Freddy Krueger", cohort: :april},
  {name: "The Joker", cohort: :april},
  {name: "Joffrey Baratheon", cohort: :april},
  {name: "Norman Bates", cohort: :april}
]

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

# we call the methods
print_header
print(students)
print_footer(students)
