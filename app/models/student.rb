

class Student
    attr_accessor :first_name, :student_inst, :test_status

@@all = []
    def initialize(first_name)
        @first_name = first_name
        @@all << self 
    end 

    def self.all 
        @@all 
    end 


    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)

    end 


    def grade_percentage
        pass_count = 0
        fail_count = 0
        BoatingTest.all.each do |test|
            if test.test_status == "Fail"
                fail_count += 1
            elsif test.test_status == "Pass"
                pass_count += 1 
            end 
            
        end 
        (pass_count.to_f / fail_count.to_f) * 100 
        binding.pry
    end 

    
    def self.find_student(name_str)
        @@all.each do |student_obj| 
            if student_obj.first_name == name_str
                return student_obj
                
            end 
        end 
        #binding.pry
    end 





end
