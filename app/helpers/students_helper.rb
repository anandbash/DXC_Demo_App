module StudentsHelper
    def name(student)
        if student.gender.downcase == "m" or student.gender.downcase == "male"
            "Mr. " + student.first_name + " " +  student.last_name
        else
            "Miss. " + student.first_name + " " +  student.last_name 
        end        
    end
end
