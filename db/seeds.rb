# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Entering record in the database"
(1..100).each do |x|
    if x.odd?
        first_name = "Student First " + "#{x}"
        last_name = "Student Last " + "#{x}"    
        birthyear = 1900 + x
        gender = "Male"
        address = "Address "+ "#{x}"
        father_name = "Fname " + "#{x}"
        mother_name = "Mname " + "#{x}"    
        email = "email_ " +  "#{x}" + "@dxc.com"
    else
        first_name = "Student First " + "#{x}"
        last_name = "Student Last " + "#{x}"    
        birthyear = 1900 + x
        gender = "Female"
        address = "Address "+ "#{x}"
        father_name = "Fname " + "#{x}"
        mother_name = "Mname " + "#{x}"     
        email = "email_ " +  "#{x}" + "@dxc.com"
    end

    puts "Entering record #{x} 0f 100."
    Student.create(first_name: first_name, last_name: last_name, year_of_birth: birthyear, gender: gender, address: address, fathers_name: father_name, mothers_name: mother_name, email: email)
end
