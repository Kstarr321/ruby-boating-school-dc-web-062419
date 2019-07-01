class Instructor
    attr_accessor :name, :ALL, :first_name, :student_inst
ALL = []
    def initialize(name)
        @name = name 
        ALL << self 
    end 

    def self.all 
        ALL 
    end 
    # call this on Monica
    def pass_student(student_obj, test_nam)
       if test_nam == nil 
            BoatingTest.new(student_obj, test_nam, "Pass", Instructor.new("Chica"))
       else   
        BoatingTest.all.each do |test_obj|
            if test_obj.student_inst == student_obj && test_obj.test_name == test_nam
                test_obj.test_status = "Pass"
            end 
            
        end 
    end  


    end 





end
