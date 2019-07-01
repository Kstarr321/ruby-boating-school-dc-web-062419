class BoatingTest
    attr_accessor :student_inst, :test_name, :test_status, :instructor_inst, :first_name

    ALL = []
    def initialize(student_inst, test_name, test_status, instructor_inst)  
        @student_inst = student_inst
        @test_status = test_status
        @test_name = test_name
        @instructor_inst = instructor_inst
        ALL << self 
    end 

    def self.all 
        ALL 
    end 








end
