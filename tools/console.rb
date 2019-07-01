require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
kolton = Student.new("Kolton")
ronald = Student.new("ronald")
gary = Student.new("Gary")
hannah = Instructor.new("Hannah")
monica = Instructor.new("Monica")
juan = Instructor.new("Juan")


cone_test = "Cone_Test"
reverse_test = "Reverse Test"
paralell_test = "Paralell Test"
driving_test = "Driving Test"
test_status_fail = "Fail"
test_status_pass = "Pass" 

kolton.add_boating_test(cone_test, test_status_fail, hannah)
kolton.add_boating_test(reverse_test, test_status_fail, monica)
kolton.add_boating_test(paralell_test, test_status_pass, juan)

# for kolton...1 pass and 2 fails
# 3 tests total 

puts "this should return 50%"

monica.pass_student(kolton, cone_test)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

