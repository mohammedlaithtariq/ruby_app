# This file should contain all the record creation needed to seed the database with its default values.
10.times do

  company=Company.create!(name:  Faker::Name.name,  address: Faker::Address.full_address,industry:Faker::Company.industry,date:Faker::Date.in_date_period)
2.times do
  employee = company.employees.create!(name:  Faker::Name.name,address: Faker::Address.full_address,
  age:Faker::Number.number(digits: 2),
  job_position:Faker::Job.position ,
  phone:Faker::PhoneNumber.cell_phone,
  hobbies:Faker::Hobby.activity,
  date:Faker::Date.in_date_period)
3.times do
  employee.clients.create(name:  Faker::Name.name,
                address: Faker::Address.full_address,
                phone:Faker::PhoneNumber.cell_phone,
                barcode:Faker::Barcode.ean)

end
end
end

# Examples:
#end
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
